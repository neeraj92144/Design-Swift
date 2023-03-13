//
//  Search.swift
//  BIIA
//
//  Created by MacMini on 25/08/22.
//

import UIKit

class Search: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    let data = [
        ["first" : "@jlo" , "second" : "JLO" , "third" : "0224B88F876783"] ,
        ["first" : "@kourtneykardashian" , "second" : "Kourtney Kardashian" , "third" : "0224B88F876783"] ,
        ["first" : "@calvinharris" , "second" : "Calvin Harris" , "third" : "0224B88F876783"] ,
        ["first" : "@50cent" , "second" : "50cent" , "third" : "0224B88F876783"] ,
        ["first" : "@dualipa" , "second" : "Dua Lipa" , "third" : "0224B88F876783"] ,
        ["first" : "@adele" , "second" : "Adele" , "third" : "0224B88F876783"] ,
        ["first" : "@kimkardashian" , "second" : "Kim Kardashian" , "third" : "0224B88F876783"] ,
        ["first" : "@tonyhawk" , "second" : "Tony Hawk" , "third" : "0224B88F876783"] ,
        ["first" : "@davidchoe" , "second" : "David Choe" , "third" : "0224B88F876783"] ,
        ["first" : "@snoopdogg" , "second" : "Snoop Dogg" , "third" : "0224B88F876783"] ,
        ["first" : "@davidguetta" , "second" : "David Guetta" , "third" : "0224B88F876783"] ,
        ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchTableViewCell", for: indexPath) as! SearchTableViewCell
        
        cell.Searchlabel.text = data[indexPath.row]["first"]
        
        cell.Searchlabel1.text = data[indexPath.row]["second"]
        
        cell.Searchlabel2.text = data[indexPath.row]["third"]
        
        cell.Searchimage.image = UIImage(named: "6")
        
        cell.Searchimage1.image = UIImage(named: "9")
        
        cell.Searchimage2.image = UIImage(named: "8")
        
        cell.Searchimage3.image = UIImage(named: "7")
        
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
