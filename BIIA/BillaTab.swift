//
//  BillaTab.swift
//  BIIA
//
//  Created by dev on 8/30/22.
//

import UIKit

class BillaTab: UIViewController {

    @IBOutlet weak var tabView: UIView!
    @IBOutlet weak var contentView: UIView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.isHidden = true;
        
        DispatchQueue.main.async {
            self.gotoHome()
        }
    }
    
    func gotoHome() {
        guard let home = self.storyboard?.instantiateViewController(withIdentifier: "Home") as? Home else { return }
        home.tab = self
        contentView.addSubviews(home.view);
        home.didMove(toParent: self)
    }
    func gotoDiscover() {
        guard let discover = self.storyboard?.instantiateViewController(withIdentifier: "Discover") as? Discover else { return }
        contentView.addSubviews(discover.view);
        discover.didMove(toParent: self)
    }
    func gotoSearch() {
        guard let search = self.storyboard?.instantiateViewController(withIdentifier: "Search") as? Search else { return }
        contentView.addSubviews(search.view);
        search.didMove(toParent: self)
    }
    func gotoEditProfile() {
        guard let editProfile = self.storyboard?.instantiateViewController(withIdentifier: "EditProfile") as? EditProfile else { return }
        contentView.addSubviews(editProfile.view);
        editProfile.didMove(toParent: self)
    }
    
    @IBAction func tabAction(_ sender: UIButton) {
        if sender.tag == 0 {
            gotoHome()
        }
        else if sender.tag == 1 {
           gotoDiscover()
        }
        else if sender.tag == 2 {
           gotoSearch()
        }
        else if sender.tag == 3 {
            gotoEditProfile()
        }
        
    }
}


extension BillaTab : HomeDelegate {
    func goToHome() {
        gotoDiscover()
    }
    
    
}
