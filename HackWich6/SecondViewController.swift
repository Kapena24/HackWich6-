//
//  SecondViewController.swift
//  HackWich6
//
//  Created by Kapena Kaaihue on 10/10/23.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource , UITableViewDelegate {
    
    @IBOutlet weak var SecondTableView: UITableView!
    
    var countriesArray = ["Japan", "Germany", "Vietnam"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return countriesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    let text = countriesArray[indexPath.row]
   cell.textLabel?.text = text
    return cell

    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
