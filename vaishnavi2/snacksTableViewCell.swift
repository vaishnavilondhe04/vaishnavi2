//
//  snacksTableViewCell.swift
//  vaishnavi2
//
//  Created by Mac on 22/06/21.
//

import UIKit

class snacksTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var snacksimage: UIImageView!
    
    
    @IBOutlet weak var snackslabel1: UILabel!
    
    
    @IBOutlet weak var snackslabel2: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
