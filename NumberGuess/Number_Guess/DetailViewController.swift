//
//  DetailViewController.swift
//  Number_Guess
//
//  Created by Tikautz Gregor on 12.11.21.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var model : Model!
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var detailTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailTableView.dataSource=self
        detailTableView.delegate=self
        
        label.text = "Du hast \(model.countOfTries) Versuche gebraucht"
        // Do any additional setup after loading the view.
        
        print(model.listOfTries)
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


}
