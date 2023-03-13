//
//  EditProfile.swift
//  BIIA
//
//  Created by MacMini on 26/08/22.
//

import UIKit

class EditProfile: UIViewController {

    @IBOutlet weak var EditProfileview: UIView!
    
    @IBOutlet weak var EditProfileview2: UIView!
    
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.EditProfileview.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        EditProfileview.layer.cornerRadius = 50
        
        self.EditProfileview2.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        EditProfileview2.layer.cornerRadius = 50
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
