//
//  SearchTableViewCell.swift
//  BIIA
//
//  Created by MacMini on 26/08/22.
//

import UIKit

class SearchTableViewCell: UITableViewCell {

    @IBOutlet weak var Searchlabel: UILabel!
    
    @IBOutlet weak var Searchlabel1: UILabel!
    
    @IBOutlet weak var Searchlabel2: UILabel!
    
    @IBOutlet weak var Searchimage: UIImageView!
    
    @IBOutlet weak var Searchimage1: UIImageView!
    
    @IBOutlet weak var Searchimage2: UIImageView!
    
    @IBOutlet weak var Searchimage3: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
