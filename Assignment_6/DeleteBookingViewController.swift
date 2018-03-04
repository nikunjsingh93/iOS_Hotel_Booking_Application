//
//  DeleteBookingViewController.swift
//  Assignment_6
//
//  Created by Nikunj Singh on 3/3/18.
//  Copyright © 2018 Nikunj Singh. All rights reserved.
//

import UIKit

class DeleteBookingViewController: UIViewController {

    @IBOutlet weak var deleteNameTextField: UITextField!
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
    
   
    @IBAction func deleteBooking(_ sender: UIBarButtonItem) {
        
        let bookNameDel = deleteNameTextField.text!
        
        
        var i = 0
        
        for m in bookArray {
            
            if (bookNameDel == m.bookingName) {
                
                bookArray.remove(at: i)
                
                
            }
            i = i + 1
            
        }
        
        let alertController = UIAlertController(title: "Success!", message:
            "Booking Deleted", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.default,handler: nil))
        
        self.present(alertController, animated: true, completion: nil)
        
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
