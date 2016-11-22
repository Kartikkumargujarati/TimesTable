//
//  ViewController.swift
//  TimesTable
//
//  Created by Kartik on 11/22/16.
//  Copyright © 2016 Kartik. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
   
    
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var labelValue: UILabel!
    @IBOutlet weak var slidervalue: UISlider!
    @IBAction func sliderMoved(_ sender: AnyObject) {
        labelValue.text = "Multiples of \(Int(slidervalue.value.rounded())) are:"
        table.reloadData()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        let timestable = Int(slidervalue.value.rounded() * 1)
        cell.textLabel?.text = "                      \(timestable)   *   \(indexPath.row + 1)   =   \(String(timestable * (indexPath.row + 1)))"
        return cell
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

