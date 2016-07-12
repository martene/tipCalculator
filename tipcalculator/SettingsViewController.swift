//
//  SettingsViewController.swift
//  tipcalculator
//
//  Created by Martene Mendy on 7/11/16.
//  Copyright © 2016 Martene Mendy. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

   @IBOutlet weak var tip1Text: UITextField!
   @IBOutlet weak var tip2Text: UITextField!
   @IBOutlet weak var tip3Text: UITextField!

   override func viewWillAppear(animated: Bool) {
      super.viewWillAppear(animated)

      print("loading default settings")

      tip1Text.text = NSUserDefaults.standardUserDefaults().stringForKey("tip1") ?? "15%"
      tip2Text.text = NSUserDefaults.standardUserDefaults().stringForKey("tip2") ?? "20%"
      tip3Text.text = NSUserDefaults.standardUserDefaults().stringForKey("tip3") ?? "25%"
   }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
   @IBAction func save(sender: UIButton) {
      NSUserDefaults.standardUserDefaults().setObject(tip1Text.text, forKey: "tip1")
      NSUserDefaults.standardUserDefaults().setObject(tip2Text.text, forKey: "tip2")
      NSUserDefaults.standardUserDefaults().setObject(tip3Text.text, forKey: "tip3")
      NSUserDefaults.standardUserDefaults().synchronize()

      print("Settings saved!!")
   }
}
