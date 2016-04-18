//
//  MealTableViewCell.swift
//  Snappettite-iOS
//
//  Created by Danny‘zert on 4/18/16.
//  Copyright © 2016 Shotaro Ikeda. All rights reserved.
//

import UIKit

class MealTableViewCell: UITableViewCell {
    // MARK: Properties
    
    /* var meals = [MealTableViewController]() */
    @IBOutlet weak var ratingControl: RatingControl!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    func initWithParams (name: String, photo: UIImage!, rating: Int)
    {
        // name to Rating Control
        self.photoImageView.image = photo
        self.nameLabel.text = name
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
