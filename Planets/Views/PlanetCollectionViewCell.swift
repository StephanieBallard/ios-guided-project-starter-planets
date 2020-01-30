//
//  PlanetCollectionViewCell.swift
//  Planets
//
//  Created by Stephanie Ballard on 1/30/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import UIKit

class PlanetCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var planetImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var planet: Planet? {
        didSet {
            updateViews()
    }
    }
    func updateViews() {
        guard let planet = planet else { return }
        
        planetImageView.image = planet.image
        nameLabel.text = planet.name
        
        
    }
    
}
