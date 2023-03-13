//
//  ConnectYourWallet.swift
//  BIIA
//
//  Created by MacMini on 24/08/22.
//

import UIKit

class ConnectYourWallet: UIViewController , UITableViewDelegate , UITableViewDataSource{
    
   let Mydata = [
        ["first" : "Rainbow" , "image" : "1"],
        ["first" : "MeterMask" , "image" : "2"],
        ["first" : "Gnosis Safe" , "image" : "3"],
        ["first" : "Argent" , "image" : "4"],
   ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Mydata.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ConnectYourWalletTableViewCell", for: indexPath) as! ConnectYourWalletTableViewCell
        cell.ConnectYourWalletlabel.textColor = UIColor.black
        cell.ConnectYourWalletlabel.text = Mydata[indexPath.row]["first"]
        cell.ConnectYourWalletimage.image = UIImage(named: Mydata[indexPath.row]["image"] ?? "")
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // nextScreen is a Controoler
        
        let BillaTab = self.storyboard?.instantiateViewController(withIdentifier: "BillaTab") as! BillaTab
        self.navigationController?.pushViewController(BillaTab, animated: true)
        
    
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
