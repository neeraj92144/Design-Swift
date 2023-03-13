//
//  PodcastPage.swift
//  BIIA
//
//  Created by MacMini on 28/08/22.
//

import UIKit

class PodcastPage: UIViewController , UITableViewDelegate , UITableViewDataSource{
    
    let mydata = [
    
        ["first" : "EP 61: BRONX LEGENDS" , "second" : "How to edit Lorem ipsum to doller met toner vat" , "third" : "21.09.2022" , "fourth" : "43 Minutes"],
        ["first" : "EP 61: BRONX LEGENDS" , "second" : "How to edit Lorem ipsum to doller met toner vat" , "third" : "21.09.2022" , "fourth" : "43 Minutes"],
        ["first" : "EP 61: BRONX LEGENDS" , "second" : "How to edit Lorem ipsum to doller met toner vat" , "third" : "21.09.2022" , "fourth" : "43 Minutes"],
        ["first" : "EP 61: BRONX LEGENDS" , "second" : "How to edit Lorem ipsum to doller met toner vat" , "third" : "21.09.2022" , "fourth" : "43 Minutes"],
        ["first" : "EP 61: BRONX LEGENDS" , "second" : "How to edit Lorem ipsum to doller met toner vat" , "third" : "21.09.2022" , "fourth" : "43 Minutes"],
        ["first" : "EP 61: BRONX LEGENDS" , "second" : "How to edit Lorem ipsum to doller met toner vat" , "third" : "21.09.2022" , "fourth" : "43 Minutes"]
    ]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mydata.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PodCastPageCell", for: indexPath) as! PodCastPageCell
        
        cell.Podcastlabel.text = mydata[indexPath.row]["first"]
        
        
        cell.Podcastlabel1.text = mydata[indexPath.row]["second"]
        
        
        cell.Podcastlabel2.text = mydata[indexPath.row]["third"]
        
        
        cell.Podcastlabel3.text = mydata[indexPath.row]["fourth"]
        
        cell.Podcastimage.image = UIImage(named: "Podcastimage0")
        
        cell.Podcastimage1.image = UIImage(named: "Podcastimage")
        
        
        return cell
    }
    

    @IBOutlet weak var PodcastPageView: UIView!
   
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.PodcastPageView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        PodcastPageView.layer.cornerRadius = 50
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
