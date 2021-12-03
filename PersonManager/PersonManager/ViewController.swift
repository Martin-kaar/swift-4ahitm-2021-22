//
//  ViewController.swift
//  PersonManager
//
//  Created by Tikautz Gregor on 26.11.21.
//

import UIKit

class ViewController: UIViewController {
    
    var model:Model = Model()

    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var firstNameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func addName(_ sender: Any) {
        model.addName(firstName: firstNameTextField.text ?? "", lastName: lastNameTextField.text ?? "")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as? TableViewController
        if let controller = viewController
        {
            print("ok")
            controller.model = self.model
        }
    }

}
