//
//  DetailViewController.swift
//  GameOfThrones
//
//  Created by TingxinLi on 11/19/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var FABImage: UIImageView!
    
    @IBOutlet weak var FABTitle: UILabel!
    
    @IBOutlet weak var FABSeason: UILabel!
    
    @IBOutlet weak var FABEpisode: UILabel!
    
    @IBOutlet weak var FABRuntime: UILabel!
    
    @IBOutlet weak var FABAirdate: UILabel!
    
    @IBOutlet weak var FABText: UITextView!
    
    var episode: GOTEpisode?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    private func setUpEpisode() {
        FABImage.image = UIImage(named: episode!.originalImageID)
        FABTitle.text = episode!.name
        FABSeason.text = String(episode!.season)
        FABEpisode.text = String(episode!.number)
        FABRuntime.text = String(episode!.runtime)
        FABAirdate.text = String(episode!.airdate)
        FABText.text = episode!.summary
        
    }
    
    
  
}
