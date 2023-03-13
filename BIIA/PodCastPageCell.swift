//
//  PodCastPageCell.swift
//  BIIA
//
//  Created by MacMini on 29/08/22.
//

import UIKit

class PodCastPageCell: UITableViewCell {

    @IBOutlet weak var Podcastlabel: UILabel!
    
    @IBOutlet weak var Podcastlabel1: UILabel!
    
    @IBOutlet weak var Podcastlabel2: UILabel!
    
    @IBOutlet weak var Podcastlabel3: UILabel!
    
    @IBOutlet weak var Podcastimage: UIImageView!
    
    @IBOutlet weak var Podcastimage1: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
