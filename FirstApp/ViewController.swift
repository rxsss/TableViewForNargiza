//
//  FirstViewController.swift
//  FirstApp
//
//  Created by Rakhman Magametov on 08.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var names = ["Ivan", "Vadya", "Maga"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! CustomCell
        cell.nameLabel.text = names[indexPath.row]
        
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    
}
