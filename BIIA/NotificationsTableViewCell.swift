//
//  NotificationsTableViewCell.swift
//  BIIA
//
//  Created by MacMini on 25/08/22.
//

import UIKit

class NotificationsTableViewCell: UITableViewCell {

    @IBOutlet weak var Notificationsimage: UIImageView!
    
    @IBOutlet weak var Nortificationsimage1: UIImageView!
    @IBOutlet weak var Notificationslabel: UILabel!
    
    @IBOutlet weak var Notificationslabel1: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
