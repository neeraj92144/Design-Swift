//
//  Discover.swift
//  BIIA
//
//  Created by MacMini on 26/08/22.
//

import UIKit
var eData = [
            DiscoverScreen(sectionType: "Live" , imageGallery: ["discover1" , "discover2" , "discover3" , "discover4" , "discover5"]) ,
            DiscoverScreen(sectionType: "Hot in Music" , imageGallery: ["discover6" , "discover7" , "discover8" , "discover9" , "discover10" , "discover11" , "discover12" , "discover13" , "discover14" , "discover15" , "discover16" , "discover17" , "discover18" , "discover19" , "discover20"]) ,
            DiscoverScreen(sectionType: "Joined Today" , imageGallery: ["discover21" , "discover22" , "discover23" , "discover24" , "discover25" , "discover26" , "discover27" , "discover28" , "discover29" , "discover30"])



]

class Discover: UIViewController {


    @IBOutlet weak var DiscoverTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Do any additional setup after loading the view.
    }
    


}

extension Discover : UITableViewDelegate , UITableViewDataSource
{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (indexPath.row == 0) {
            return 320
        } else {
            return 600
        }
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return eData.count
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return eData[section].sectionType
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DiscoverTableViewCell", for: indexPath) as! DiscoverTableViewCell
        
        cell.DiscoverCollectionView.tag = indexPath.section
        return cell
        
    }
    
}
