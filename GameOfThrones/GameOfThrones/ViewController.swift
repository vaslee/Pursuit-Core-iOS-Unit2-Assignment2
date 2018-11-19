//
//  ViewController.swift
//  GameOfThrones
//
//  Created by TingxinLi on 11/19/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var episodes = GOTEpisode.episodeBySeason
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? DetailViewController,
            let cellSelected = tableView.indexPathForSelectedRow else {return}
        let episodeSelected = episodes[cellSelected.section][cellSelected.row]
        destination.episode = episodeSelected
}
}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return episodes.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return episodes.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let episodesToSet = episodes[indexPath.section][indexPath.row]
        if episodesToSet.season % 2 == 1 {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "OldViewCell", for: indexPath) as? OldViewCell else { return UITableViewCell() }
        
        cell.OldImage.image = UIImage(named: episodesToSet.originalImageID)
        cell.OldName.text = episodesToSet.name
        cell.OldSeason.text = episodesToSet.seasonNumAndEpisodeNum
        
        return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "EvenViewCell", for: indexPath) as? EvenViewCell else { return UITableViewCell() }
            
            cell.EvenImage.image = UIImage(named: episodesToSet.originalImageID)
            cell.EvenName.text = episodesToSet.name
            cell.EvenSeason.text = episodesToSet.seasonNumAndEpisodeNum
            
            return cell
        }
    
}
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Season 1"
        case 1:
            return "Season 2"
        case 2:
            return "Season 3"
        case 3:
            return "Season 4"
        case 4:
            return "Season 5"
        case 5:
            return "Season 6"
        case 6:
            return "Season 7"
        default:
            return "Unknown"
        }
    }
    
    
    
}
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
