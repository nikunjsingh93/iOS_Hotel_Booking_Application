//
//  DisplayBookingViewController.swift
//  Assignment_6
//
//  Created by Nikunj Singh on 3/2/18.
//  Copyright © 2018 Nikunj Singh. All rights reserved.
//

import UIKit

class DisplayBookingViewController: UIViewController {

    @IBOutlet weak var DisplayBookingTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DisplayBooking()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func back(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func DisplayBooking() {
        
        
        
        var someStrings = [String]()
        
        for test in bookArray {
            
            
            let dateFormatter1 = DateFormatter()
            dateFormatter1.dateFormat = "MM-dd-yyyy"
            let dateString1 = dateFormatter1.string(from: test.roomObj.roomFrom!)
            
            let dateFormatter2 = DateFormatter()
            dateFormatter2.dateFormat = "MM-dd-yyyy"
            let dateString2 = dateFormatter2.string(from: test.roomObj.roomTo!)
            
            someStrings.append("------")
            
            someStrings.append("Booking Name: \(test.bookingName!)")
            
            
            someStrings.append("Cutomer Name: \(test.customerObj.custName!)")
            someStrings.append("Address: \(test.customerObj.custAddress!)")
            someStrings.append("Phone Number: \(test.customerObj.custPhoneNumber!)")
            
            
            someStrings.append("Room Name: \(test.roomObj.roomName!)")
            someStrings.append("Room Booked From: \(dateString1)")
            someStrings.append("Room Booked Till: \(dateString2)")
            someStrings.append("Room Price: \(test.roomObj.roomPrice!)")
            someStrings.append("Room Type: \(test.roomObj.roomType!)")
            someStrings.append("Other Customer Name: \(test.bokingOtherCust!)")
            
            
            someStrings.append("------")
            
            
            
        }
        
        var text = ""
        var selectedArray = [String](someStrings)
        for index in 0..<selectedArray.count {
            text += "\(selectedArray[index])\n"
        }
        
        DisplayBookingTextView.text = text
        
        
        
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
