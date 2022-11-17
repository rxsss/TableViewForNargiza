//
//  AddNewContactViewController.swift
//  FirstApp
//
//  Created by Rakhman Magametov on 17.11.2022.
//

import UIKit

protocol AddNewContactDelegate {
    func addContact(name: String)
}

class AddNewContactViewController: UIViewController {

    var delegate: AddNewContactDelegate?
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addDidTapped(_ sender: UIButton) {
        delegate?.addContact(name: textField.text!)
        navigationController?.popViewController(animated: true)
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
