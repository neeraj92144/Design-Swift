//
//  Notifications.swift
//  BIIA
//
//  Created by MacMini on 25/08/22.
//

import UIKit

class Notifications: UIViewController , UITableViewDelegate , UITableViewDataSource{
    
    let mydata = [
        
        ["first" : "@davidchoe" , "second" : "Uploaded a new podcast episode"],
        ["first" : "@calvinharris" , "second" : "Uploaded a new podcast episode"],
        ["first" : "@50cent" , "second" : "In session 'that's how we do it'"],
        ["first" : "@dualipa" , "second" : "Uploaded a new podcast episode"],
        ["first" : "@adele" ,
         "second" : "In session 'My Mondays'"],
        ["first" : "@kimkardashian" , "second" : "In session 'Get them today'"],
        ["first" : "@tonyhawk" , "second" : "In session 'Hey BLLA members'"],
        ["first" : "@kourtneykardashian" , "second" : "Uploaded a new podcast episode"],
        ["first" : "@snoopdogg" , "second" : "Uploaded a new podcast episode"],
        ["first" : "@davidguetta" , "second" : "Uploaded a new podcast episode"],
        ["first" : "@thenptoriousmma" , "second" : "In session'that's life'"],
        ["first" : "@actionbronson" , "second" : "Uploaded a new podcast episode"],
        ["first" : "@aleciakeys" , "second" : "In session 'here is to my lovely."],
        ["first" : "@blackthought" , "second" : "Uploaded a new podcast episode"],
        ["first" : "@davidchoe" , "second" : "Uploaded a new podcast episode"],
        ["first" : "@davidchoe" , "second" : "Uploaded a new podcast episode"],
        ["first" : "@cardib" , "second" : "In session 'Come to mama'"],
        ["first" : "@xtina" , "second" : "Uploaded a new podcast episode"],
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mydata.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NotificationsTableViewCell", for: indexPath) as! NotificationsTableViewCell
        
        cell.Notificationslabel.text = mydata[indexPath.row]["first"]
        
        cell.Notificationslabel1.text = mydata[indexPath.row]["second"]
        cell.Notificationsimage.image = UIImage(named: "5")
        
        cell.Nortificationsimage1.image = UIImage(named: "6")
        return cell
        
    }
    

    
    
    @IBOutlet weak var Tableview: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
