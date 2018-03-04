//
//  CreateBook2ViewController.swift
//  Assignment_6
//
//  Created by Nikunj Singh on 3/2/18.
//  Copyright © 2018 Nikunj Singh. All rights reserved.
//

import UIKit



class CreateBook2ViewController: UIViewController {

    @IBOutlet weak var bookingRoomNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.hideKeyboard()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func bookpage3(_ sender: UIBarButtonItem) {
        
        let temp = bookingRoomNameTextField.text!
        
        
        for r in roomArray {
            if (r.roomName == temp ){
                
                if (r.roomType == "Single"){
                    
                    bookingRoomNameGlobal = temp
                    
                    bookingOtherCustNameGlobal = "N/A"
                    
                    roomObject = r
                    
                    
                    let createBook4VC = CreateBook4ViewController(nibName: "CreateBook4", bundle: nil)
                    
                    self.present(createBook4VC, animated: true, completion: nil)
                    
                } else if (r.roomType == "Double"){
                    
                    bookingRoomNameGlobal = temp
                    
                    roomObject = r
                    
                    let createBook3VC = CreateBook3ViewController(nibName: "CreateBook3", bundle: nil)
                    
                    self.present(createBook3VC, animated: true, completion: nil)
                    
                    
                }
                
                
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
