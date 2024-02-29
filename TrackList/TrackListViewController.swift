//
//  TrackListViewController.swift
//  TrackList
//
//  Created by Anna Lavrova on 29.02.2024.
//

import UIKit

class TrackListViewController: UITableViewController {

    private var trackList = Track.getTrackList()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        trackList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "trackID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let track = trackList[indexPath.row]

        content.text = track.song
        content.secondaryText = track.artist
        content.image = UIImage(named: track.title)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2

        cell.contentConfiguration = content
        return cell
    }


}
