//
//  CreateBook4ViewController.swift
//  Assignment_6
//
//  Created by Nikunj Singh on 3/2/18.
//  Copyright © 2018 Nikunj Singh. All rights reserved.
//

import UIKit

class CreateBook4ViewController: UIViewController {
    @IBOutlet weak var bookingFromDPicker: UIDatePicker!
    @IBOutlet weak var bookingToDPicker: UIDatePicker!
    
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
    

    
    
    @IBAction func addbooking(_ sender: UIBarButtonItem) {
        
        //
        //        let dateFormatter = DateFormatter()
        //        dateFormatter.dateFormat = "MM-dd-yyyy"
        //
        //        let fdate = textFieldBookingFrom.text!
        //        let date1n = dateFormatter.date(from: fdate)
        //
        //        let tdate = textFieldBookingTo.text!
        //        let date2n = dateFormatter.date(from: tdate)
        
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM-dd-yyyy"
        
        
        bookingFromDPicker.datePickerMode = UIDatePickerMode.date
        let dateFormatter1 = DateFormatter()
        dateFormatter1.dateFormat = "MM-dd-yyyy"
        let selectedDate = dateFormatter1.string(from: bookingFromDPicker.date)
        
        
        bookingToDPicker.datePickerMode = UIDatePickerMode.date
        let dateFormatter2 = DateFormatter()
        dateFormatter2.dateFormat = "MM-dd-yyyy"
        let selectedDate2 = dateFormatter2.string(from: bookingToDPicker.date)
        
        
        dateBookingFrom = dateFormatter.date(from: selectedDate)
        
        dateBookingTo = dateFormatter.date(from: selectedDate2)
        
        //
        //        let date1n = datePickerBookingFrom.date
        //
        //        let date2n = datePickerBookingTo.date
        
        let date1n = dateBookingFrom
        
        let date2n = dateBookingTo
        
        
        
        let tempRoomName = bookingRoomNameGlobal
        
        outer: for e in roomArray {
            if(e.roomName == tempRoomName) {
                
                if (date1n?.isBetweeen(date: e.roomFrom!, andDate: e.roomTo!))! || date2n?.isBetweeen(date: e.roomFrom!, andDate: e.roomTo!) == true {
                    
                    print("Room \(e.roomName!) already Booked for this Date")
                    

                    let alertController = UIAlertController(title: "Warning!", message:
                        "Room \(e.roomName!) already Booked for this Date", preferredStyle: UIAlertControllerStyle.alert)
                    alertController.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.default,handler: nil))
                    
                    self.present(alertController, animated: true, completion: nil)
                    
                    
                    break outer
                    
                } else if date1n == e.roomFrom!{
                    
                
                    
                    print("Room \(e.roomName!) already Booked for this Day..")
                    
                    let alertController = UIAlertController(title: "Warning!", message:
                        "Room \(e.roomName!) already Booked for this Day..", preferredStyle: UIAlertControllerStyle.alert)
                    alertController.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.default,handler: nil))
                    
                    self.present(alertController, animated: true, completion: nil)
                    
                
                    
                    break outer
                    
                } else {
                    
                    print("Room \(e.roomName!) Booked, Moving On")
                    
                    let booking = Booking()
                    
                    booking.bookingName = bookingNameGlobal
                    
                    booking.bokingOtherCust = bookingOtherCustNameGlobal
                    
                    booking.customerObj = custObject
                    
                    booking.roomObj = roomObject
                    
                    booking.roomObj.roomFrom! = date1n!
                    booking.roomObj.roomTo! = date2n!
                    
                    bookArray.append(booking)
                    
                    let alertController = UIAlertController(title: "Success!", message:
                        "Booking has been Added", preferredStyle: UIAlertControllerStyle.alert)
                    alertController.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.default,handler: nil))
                    
                    self.present(alertController, animated: true, completion: nil)
                    
                    break outer
                }
                
            } else {
                print("Loading...")
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

extension Date{
    
    func isBetweeen(date date1: Date, andDate date2: Date) -> Bool {
        
        return date1.compare(self) == self.compare(date2 as Date)
        
    }
    
}
