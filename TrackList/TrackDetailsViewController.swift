//
//  TrackDetailsViewController.swift
//  TrackList
//
//  Created by Anna Lavrova on 29.02.2024.
//

import UIKit

class TrackDetailsViewController: UIViewController {

    @IBOutlet weak var coverImageView: UIImageView!
    @IBOutlet weak var trackNameLabel: UILabel!

    var track: Track!

    override func viewDidLoad() {
        super.viewDidLoad()
        coverImageView.image = UIImage(named: track.title)
        trackNameLabel.text = track.title
    }
}
