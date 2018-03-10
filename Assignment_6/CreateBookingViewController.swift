//
//  CreateBookingViewController.swift
//  Assignment_6
//
//  Created by Nikunj Singh on 3/2/18.
//  Copyright © 2018 Nikunj Singh. All rights reserved.
//

import UIKit

class CreateBookingViewController: UIViewController {

    @IBOutlet weak var bookingNameTextField: UITextField!
    @IBOutlet weak var bookingCustNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.hideKeyboard()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func toCreate2(_ sender: UIBarButtonItem) {
        
        let temp = bookingCustNameTextField.text!
        
        for c in custArraydata {
            if (temp == c.custName) {
                
                custObject = c
                
                bookingNameGlobal=bookingNameTextField.text!
                
                let createBook2VC = CreateBook2ViewController(nibName: "CreateBook2", bundle: nil)
                
                self.present(createBook2VC, animated: true, completion: nil)
            }
        }
        
        
    }
    
    @IBAction func back(_ sender: UIBarButtonItem) {
        
        self.dismiss(animated: true, completion: nil)
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
