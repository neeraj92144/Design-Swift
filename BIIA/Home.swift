//
//  Home.swift
//  BIIA
//
//  Created by MacMini on 25/08/22.
//

import UIKit

protocol HomeDelegate {
    func goToHome()
}

class Home: UIViewController {

    var tab : BillaTab!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func crash(_ sender: Any) {
        print("Crash")
    }
    
    @IBAction func goToNotification(_ sender: Any) {
        let Notifications = self.storyboard?.instantiateViewController(withIdentifier: "Notifications") as! Notifications
        self.navigationController?.pushViewController(Notifications, animated: true)
    }
    
    @IBAction func goToDiscover(_ sender: Any) {
        tab.gotoHome();
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func goToLive(_ sender: UIButton) {
        let nextScreen = self.storyboard?.instantiateViewController(withIdentifier: "ConnectYourWallet") as! ConnectYourWallet
        self.navigationController?.pushViewController(nextScreen, animated: true)
    }
    

}
