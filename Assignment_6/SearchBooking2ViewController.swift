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

         self.hideKeyboard()
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
        


        for p in bookArraydata {
            if(p.bookingCustName == custSearch) {
                
                let dateFormatter1 = DateFormatter()
                dateFormatter1.dateFormat = "MM-dd-yyyy"
                let dateString1 = dateFormatter1.string(from: p.bookingFrom!)
                
                let dateFormatter2 = DateFormatter()
                dateFormatter2.dateFormat = "MM-dd-yyyy"
                let dateString2 = dateFormatter2.string(from: p.bookingTo!)

                searchStrings.append("------")

                searchStrings.append("Booking details for \(custSearch!) customer is :")

                searchStrings.append("Booking Name: \(p.bookingName!)")


                searchStrings.append("Cutomer Name: \(p.bookingCustName!)")
                searchStrings.append("Address: \(p.bookingCustAdd!)")
                searchStrings.append("Phone Number: \(p.bookingCustPhone!)")


                searchStrings.append("Room Name: \(p.bookingRoomName!)")
                searchStrings.append("Room Booked From: \(dateString1)")
                searchStrings.append("Room Booked Till: \(dateString2)")
                searchStrings.append("Room Price: \(p.bookingRoomPrice!)")
                searchStrings.append("Room Type: \(p.bookingRoomType!)")
                searchStrings.append("Other Customer Name: \(p.bookingOtherCust!)")

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
