import UIKit

class RideOnController: UIViewController {
    
    // MARK: Properties
    var rideOnCart: RideOnCart!
    var tracks: [Track] = []

    // MARK: Outlets and Actions
    @IBOutlet weak var rideOnLabel: UILabel!
    @IBOutlet weak var topSpeedLabel: UILabel!
    @IBOutlet weak var accelerationLabel: UILabel!
    @IBOutlet weak var brakesLabel: UILabel!
    @IBOutlet weak var rideOnCartImageView: UIImageView!
    @IBOutlet weak var trackTableView: UITableView!
    @IBOutlet weak var startButton: UIButton!
    
    @IBAction func startRideOn(_ sender: UIButton) {
        startRideOn()
    }
    
    // MARK: Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: Helper Methods
    private func setupUI() {
        rideOnLabel.text = rideOnCart.name
        topSpeedLabel.text = "Top Speed: \(rideOnCart.topSpeed) km/h"
        accelerationLabel.text = "Acceleration: \(rideOnCart.acceleration) m/s^2"
        brakesLabel.text = "Brakes: \(rideOnCart.brakes)%"
        rideOnCartImageView.image = rideOnCart.mapImage
        RideOnDataSource.shared.getTracks { (result) in
            switch result {
            case .success(let tracks):
                self.tracks = tracks
                DispatchQueue.main.async {
                    self.trackTableView.reloadData()
                }
            case .failure(let error):
                DispatchQueue.main.async {
                    self.presentErrorAlert(error)
                }
            }
        }
    }
    
    private func startRideOn() {
        let rideOnVC = RideOnViewController.instantiateInitialViewController()
        rideOnVC.tracks = tracks
        rideOnVC.rideOnCart = rideOnCart
        present(rideOnVC, animated: true, completion: nil)
    }
    
    private func presentErrorAlert(_ error: Error) {
        let alertController = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
}


// MARK: - UITableViewDelegate
extension RideOnController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let track = tracks[indexPath.row]
        let trackDetailVC = TrackDetailViewController.instantiateInitialViewController()
        trackDetailVC.track = track
        present(trackDetailVC, animated: true, completion: nil)
    }
}

// MARK: - UITableViewDataSource
extension RideOnController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tracks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TrackCell", for: indexPath) as! TrackCell
        let track = tracks[indexPath.row]
        cell.configure(with: track)
        return cell
    }
}