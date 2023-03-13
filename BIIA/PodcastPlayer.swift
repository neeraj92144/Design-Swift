//
//  PodcastPlayer.swift
//  BIIA
//
//  Created by MacMini on 29/08/22.
//

import UIKit

class PodcastPlayer: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    @IBOutlet weak var Podcastplayerview: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        super.viewDidLoad()
        
        
        self.Podcastplayerview.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        Podcastplayerview.layer.cornerRadius = 50
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
