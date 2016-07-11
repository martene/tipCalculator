//
//  ViewController.swift
//  tipcalculator
//
//  Created by Martene Mendy on 7/11/16.
//  Copyright © 2016 Martene Mendy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   @IBOutlet weak var tipLabel: UILabel!
   @IBOutlet weak var totalLabel: UILabel!
   @IBOutlet weak var billField: UITextField!
   @IBOutlet weak var tipControl: UISegmentedControl!



   override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view, typically from a nib.
   }

   override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
   }


   @IBAction func onTap(sender: AnyObject) {
      view.endEditing(true)
   }


   @IBAction func calculateTip(sender: AnyObject) {

      let tipPercents = [0.18, 0.2, 0.25]

      let bill = Double(billField.text!) ?? 0
      let tip = bill * tipPercents[tipControl.selectedSegmentIndex]
      let total = bill + tip

      tipLabel.text = String(format: "$%.2f", tip)
      totalLabel.text = String(format: "$%.2f", total)   }
}

