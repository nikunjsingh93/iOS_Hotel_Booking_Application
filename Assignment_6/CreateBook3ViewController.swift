//
//  CreateBook3ViewController.swift
//  Assignment_6
//
//  Created by Nikunj Singh on 3/2/18.
//  Copyright © 2018 Nikunj Singh. All rights reserved.
//

import UIKit

class CreateBook3ViewController: UIViewController {
    @IBOutlet weak var bookingOtherCustNameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.hideKeyboard()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func back(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func nextbook4(_ sender: UIBarButtonItem) {
        
        let temp = bookingOtherCustNameTextField.text!
        
        for c in custArray {
            
            if(c.custName == temp) {
                
                bookingOtherCustNameGlobal = temp
                
                let createBook4VC = CreateBook4ViewController(nibName: "CreateBook4", bundle: nil)
                
                self.present(createBook4VC, animated: true, completion: nil)
                
                
                
            }
            
            
            
        }
        
        
        
        
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
