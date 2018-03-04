//
//  SearchBooking2ViewController.swift
//  Assignment_6
//
//  Created by Nikunj Singh on 3/3/18.
//  Copyright © 2018 Nikunj Singh. All rights reserved.
//

import UIKit

class SearchBooking2ViewController: UIViewController {

    @IBOutlet weak var searchTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        searchBooking()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func back(_ sender: UIBarButtonItem) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    func searchBooking() {
        
       
        
        let custSearch = searchCustNameTypeGlobal
        
        
    
        var searchStrings = [String]()
        
        
        
        for p in bookArray {
            if(p.customerObj.custName == custSearch) {
                
                searchStrings.append("------")
                
                searchStrings.append("Booking details for \(custSearch!) customer is :")
                
                searchStrings.append("Booking Name: \(p.bookingName!)")
                
                
                searchStrings.append("Cutomer Name: \(p.customerObj.custName!)")
                searchStrings.append("Address: \(p.customerObj.custAddress!)")
                searchStrings.append("Phone Number: \(p.customerObj.custPhoneNumber!)")
                
                
                searchStrings.append("Room Name: \(p.roomObj.roomName!)")
                searchStrings.append("Room Booked From: \(p.roomObj.roomFrom!)")
                searchStrings.append("Room Booked Till: \(p.roomObj.roomTo!)")
                searchStrings.append("Room Price: \(p.roomObj.roomPrice!)")
                searchStrings.append("Room Type: \(p.roomObj.roomType!)")
                searchStrings.append("Other Customer Name: \(p.bokingOtherCust!)")
                
                searchStrings.append("------")
            }
        }
        
        var text1 = ""
        var selectedArray1 = [String](searchStrings)
        for index in 0..<selectedArray1.count {
            text1 += "\(selectedArray1[index])\n"
        }
        
        searchTextView.text = text1
        
        
    
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
