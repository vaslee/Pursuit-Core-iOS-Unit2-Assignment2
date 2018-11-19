//
//  EvenViewCell.swift
//  GameOfThrones
//
//  Created by TingxinLi on 11/19/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class EvenViewCell: UITableViewCell {

    @IBOutlet weak var EvenImage: UIImageView!
    
    @IBOutlet weak var EvenName: UILabel!
    
    @IBOutlet weak var EvenSeason: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
