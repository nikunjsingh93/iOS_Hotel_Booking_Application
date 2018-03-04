//
//  CreateCustViewController.swift
//  Assignment_6
//
//  Created by Nikunj Singh on 3/2/18.
//  Copyright © 2018 Nikunj Singh. All rights reserved.
//

import UIKit

class CreateCustViewController: UIViewController {

    @IBOutlet weak var custNameTextField: UITextField!
    @IBOutlet weak var custPhoneTextField: UITextField!
    @IBOutlet weak var custAddressTextField: UITextField!
    
    
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
    
    
    
    func checkInt(string: String) -> Bool {
        
        return Int(string) != nil
    }
    
    
    
    
    func checkDigit(string: String) -> Bool {
        
        
        if string.utf16.count < 10 || string.utf16.count > 10 {
            
            return false
        }
        return true
    }
    
    @IBAction func createCustButton(_ sender: UIBarButtonItem) {
        
        
        if (checkInt(string: custPhoneTextField.text!) == true) && (checkDigit(string: custPhoneTextField.text!) == true) {
            let customer1obj = Customer()
            
            let text = custNameTextField.text!
            customer1obj.custName = text
            
            
            let text2 = custPhoneTextField.text!
            customer1obj.custPhoneNumber = text2
            
            
            let text3 = custAddressTextField.text!
            customer1obj.custAddress = text3
            
            
            custArray.append(customer1obj)
            
            let alertController = UIAlertController(title: "Success!", message:
                "Customer Added", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
            
            
        } else {
            
            let alertController = UIAlertController(title: "Warning!", message:
                "Only Integers for Numbers and 10 Digits", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
            
            
            
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

extension UIViewController
{
    func hideKeyboard()
    {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(
            target: self,
            action: #selector(UIViewController.dismissKeyboard))
        
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard()
    {
        view.endEditing(true)
    }
}
