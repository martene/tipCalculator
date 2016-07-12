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

   @IBOutlet weak var tipCtrl: UISegmentedControl!

   override func viewWillAppear(animated: Bool) {
      super.viewWillAppear(animated)

      print("initializing tip controller... ")

      let defTip1 = "15"
      let defTip2 = "20"
      let defTip3 = "25"
   tipCtrl.setTitle(NSUserDefaults.standardUserDefaults().stringForKey("tip1") ?? defTip1, forSegmentAtIndex: 0)
      tipCtrl.setTitle(NSUserDefaults.standardUserDefaults().stringForKey("tip2") ?? defTip2 + "%", forSegmentAtIndex: 1)
      tipCtrl.setTitle(NSUserDefaults.standardUserDefaults().stringForKey("tip3") ?? defTip3 + "%", forSegmentAtIndex: 2)
   }

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


   func pc (percentage: String) -> Double {
      return (Double(percentage.stringByReplacingOccurrencesOfString("%", withString: ""))! / 100)
   }

   @IBAction func calculateTip(sender: AnyObject) {

      let bill = Double(billField.text!) ?? 0

      let tip = bill * pc(tipCtrl.titleForSegmentAtIndex(tipCtrl.selectedSegmentIndex)!)
      let total = bill + tip

      tipLabel.text = String(format: "$%.2f", tip)
      totalLabel.text = String(format: "$%.2f", total)   }
}

