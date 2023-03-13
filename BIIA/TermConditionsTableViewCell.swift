//
//  TermConditionsTableViewCell.swift
//  BIIA
//
//  Created by MacMini on 24/08/22.
//

import UIKit

class TermConditionsTableViewCell: UITableViewCell {

    @IBOutlet weak var TermConditionsView: UIView!
    
    
    @IBOutlet weak var TermConditionsLabel: UILabel!
    
    @IBOutlet weak var TermConditonsLabel1: UILabel!
    
    @IBOutlet weak var TermConditionsLabel2: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
