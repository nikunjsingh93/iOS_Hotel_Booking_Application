//
//  CreateRoomViewController.swift
//  Assignment_6
//
//  Created by Nikunj Singh on 3/2/18.
//  Copyright © 2018 Nikunj Singh. All rights reserved.
//

import UIKit

class CreateRoomViewController: UIViewController {

    @IBOutlet weak var roomNameTextField: UITextField!
    @IBOutlet weak var roomPriceTextField: UITextField!
    
    @IBOutlet weak var datePickerRoomFrom: UIDatePicker!
    @IBOutlet weak var datePickerRoomTo: UIDatePicker!
    
    
    var temp:String = ""
    
    @IBAction func roomType(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            print("1")
             temp = "Single"
        case 1:
            print("2")
            
            temp = "Double"
        default:
            print("3")
        }
    }
    
    
    @IBAction func createNewRoom(_ sender: UIBarButtonItem) {
        
        let room1obj = Room()
        
        let text = roomNameTextField.text!
        room1obj.roomName = text
        
        
        room1obj.roomType = temp
        
        
        let text3 = roomPriceTextField.text!
        room1obj.roomPrice = text3
        
        
        
        //        let text4 = textFieldRoomFrom.text!
        //        let text5 = textFieldRoomTo.text!
        
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM-dd-yyyy"
        
        
        datePickerRoomFrom.datePickerMode = UIDatePickerMode.date
        let dateFormatter1 = DateFormatter()
        dateFormatter1.dateFormat = "MM-dd-yyyy"
        let selectedDate = dateFormatter1.string(from: datePickerRoomFrom.date)
        
        datePickerRoomTo.datePickerMode = UIDatePickerMode.date
        let dateFormatter2 = DateFormatter()
        dateFormatter2.dateFormat = "MM-dd-yyyy"
        let selectedDate2 = dateFormatter2.string(from: datePickerRoomTo.date)
        
        
        dateRoomFrom = dateFormatter.date(from: selectedDate)
        
        dateRoomTo = dateFormatter.date(from: selectedDate2)
        
        
        
        room1obj.roomFrom = dateRoomFrom
        room1obj.roomTo = dateRoomTo
        
        
        
        roomArray.append(room1obj)
        
        
        let alertController = UIAlertController(title: "Success!", message:
            "Room Added", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.default,handler: nil))
        
        self.present(alertController, animated: true, completion: nil)
        
        
    }
    
    
    
    
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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


