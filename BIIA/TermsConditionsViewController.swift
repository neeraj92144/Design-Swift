//
//  TermsConditionsViewController.swift
//  BIIA
//
//  Created by MacMini on 24/08/22.
//

import UIKit

class TermsConditionsViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    let mydata = [
    
        ["first" : "OUR TERMS & CONDITIONS \nPRIVACY POLICY \nAML POLICY" , "second" : "Ferraries, lambos and gold burgers, in orci porta molestie. Etiam porta ac dui vitae volutpat. \n \nLorem ipsum dolor sit amet, Consectetur adipiscing elit. Morbi tellus turpis, mollis sed malesuada eu, dignissim nec magna. In et tellus nec libero dignissim tempor ac vel erat. Sed a varius felis. Integer malesuada elits eget posuere aliquet. Nullam sed imperdiet orci. Maecenas sit amet nisl sit amet metus accumsan ultrices. Aliquam finibus massa in ligula dignnissim, id suscipit purus congue. Nullam viverra neque tellus, eget dictum nulla semper vel." ]
    ]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mydata.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let Cell = tableView.dequeueReusableCell(withIdentifier: "TermConditionsTableViewCell", for: indexPath) as! TermConditionsTableViewCell
        
        Cell.TermConditionsLabel.text = mydata[indexPath.row]["first"]
        
        Cell.TermConditonsLabel1.text = mydata[indexPath.row]["second"]
        
        return Cell
    }
    

    @IBOutlet weak var TermsConditionsTableView: UITableView!
    
    @IBAction func AGREE(_ sender: Any) {
        let nextScreen = self.storyboard?.instantiateViewController(withIdentifier: "ConnectYourWallet") as! ConnectYourWallet
        self.navigationController?.pushViewController(nextScreen, animated: true)
        
    }
    
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
