//
//  DetailViewController.swift
//  Number_Guess
//
//  Created by Tikautz Gregor on 12.11.21.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var model : Model!
    
    @IBOutlet weak var detailTableView: UITableView!
    
    var generatedNewNumber: Bool!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailTableView.dataSource=self
        detailTableView.delegate=self
        
   
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
      return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.countOfTries
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
           return 50
       }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        let tryText = String(model.listOfTries[indexPath.row])
        let cell = UITableViewCell()
        let labelText = UILabel(frame: CGRect(x:0, y:0, width:200, height:50))
        labelText.text = tryText
        cell.addSubview(labelText)
        return cell

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        if self.isMovingFromParent && model.generateNewNumber {
            model.reset()
            print("Zu erratende Zahl: \(model.numberToGuess)")
        }
    }


}
