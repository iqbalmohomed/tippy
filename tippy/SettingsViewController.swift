//
//  SettingsViewController.swift
//  tippy
//
//  Created by Iqbal Mohomed on 8/22/17.
//  Copyright © 2017 Iqbal Mohomed. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tipSelector: UISegmentedControl!
    
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("settings view will appear")
        let defaults = UserDefaults.standard
        let tipPctIdx = defaults.integer(forKey: "default_tip_percentage_index")
        print(tipPctIdx)
        tipSelector.selectedSegmentIndex = tipPctIdx
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("settings view did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("settings view will disappear")
        
        let defaults = UserDefaults.standard
        let selectedIndex = tipSelector.selectedSegmentIndex
        defaults.set(selectedIndex, forKey: "default_tip_percentage_index")
        print("Default saved")
        defaults.synchronize()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("settings view did disappear")
    }

}
