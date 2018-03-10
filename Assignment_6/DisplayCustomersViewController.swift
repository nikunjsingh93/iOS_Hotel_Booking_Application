//
//  DisplayCustomersViewController.swift
//  Assignment_6
//
//  Created by Nikunj Singh on 3/2/18.
//  Copyright © 2018 Nikunj Singh. All rights reserved.
//

import UIKit

class DisplayCustomersViewController: UIViewController {

    @IBOutlet weak var DisplayCustomersTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

         self.hideKeyboard()
        DisplayCustomers()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func back(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
        
    }
    
    func DisplayCustomers() {
        
        
        
        var someStrings2 = [String]()

        
        do {
             custArraydata = try context.fetch(Customers.fetchRequest())
            
            for each in custArraydata {
                
                someStrings2.append("------")
                
               someStrings2.append("Name: \(each.custName!)")
               someStrings2.append("Address: \(each.custPhoneNumber!)")
               someStrings2.append("Phone Number: \(each.custAddress!)")

                someStrings2.append("------")
            }
        }
        catch {
            
            //handle
        }
       
        
    
        
//        for test2 in custArray {
//
//            someStrings2.append("------")
//
//
//            someStrings2.append("Name: \(test2.custName!)")
//            someStrings2.append("Address: \(test2.custAddress!)")
//            someStrings2.append("Phone Number: \(test2.custPhoneNumber!)")
//
//
//            someStrings2.append("------")
//
//        }
        
        
        
        var text2 = ""
        var selectedArray2 = [String](someStrings2)
        for index in 0..<selectedArray2.count {
            text2 += "\(selectedArray2[index])\n"
        }
        
        DisplayCustomersTextView.text = text2
        
       
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
