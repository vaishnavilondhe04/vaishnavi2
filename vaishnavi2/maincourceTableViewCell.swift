//
//  maincourceTableViewCell.swift
//  vaishnavi2
//
//  Created by Mac on 23/06/21.
//

import UIKit

class maincourceTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var maincourceimage: UIImageView!
    
    @IBOutlet weak var maincourcename: UILabel!
    
    @IBOutlet weak var maincourcestate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
