//
//  DisplayRoomsViewController.swift
//  Assignment_6
//
//  Created by Nikunj Singh on 3/2/18.
//  Copyright © 2018 Nikunj Singh. All rights reserved.
//

import UIKit

class DisplayRoomsViewController: UIViewController {

    @IBOutlet weak var displayRoomsTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         self.hideKeyboard()
        DisplayRooms()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func back(_ sender: UIBarButtonItem) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    
    func DisplayRooms() {
      
        var someStrings1 = [String]()
        
        
        do {
            roomArraydata = try context.fetch(Rooms.fetchRequest())
            
            for each in roomArraydata {
                
                let dateFormatter1 = DateFormatter()
                dateFormatter1.dateFormat = "MM-dd-yyyy"
                let dateString1 = dateFormatter1.string(from: each.roomFrom!)
                
                let dateFormatter2 = DateFormatter()
                dateFormatter2.dateFormat = "MM-dd-yyyy"
                let dateString2 = dateFormatter2.string(from: each.roomTo!)
                
                someStrings1.append("------")
                
                
                someStrings1.append("Name: \(each.roomName!)")
                someStrings1.append("Price: \(each.roomPrice!)")
                someStrings1.append("Type: \(each.roomType!)")
                someStrings1.append("Booked From: \(dateString1)")
                someStrings1.append("Booked Till: \(dateString2)")
                
                someStrings1.append("------")
            }
        }
        catch {
            
            //handle
        }
        
        
//        for test1 in roomArray {
//
//            let dateFormatter1 = DateFormatter()
//            dateFormatter1.dateFormat = "MM-dd-yyyy"
//            let dateString1 = dateFormatter1.string(from: test1.roomFrom!)
//
//            let dateFormatter2 = DateFormatter()
//            dateFormatter2.dateFormat = "MM-dd-yyyy"
//            let dateString2 = dateFormatter2.string(from: test1.roomTo!)
//
//            someStrings1.append("------")
//
//
//            someStrings1.append("Name: \(test1.roomName!)")
//            someStrings1.append("Price: \(test1.roomPrice!)")
//            someStrings1.append("Type: \(test1.roomType!)")
//            someStrings1.append("Booked From: \(dateString1)")
//            someStrings1.append("Booked Till: \(dateString2)")
//
//
//            someStrings1.append("------")
//
//        }
//
        
        
        var text1 = ""
        var selectedArray1 = [String](someStrings1)
        for index in 0..<selectedArray1.count {
            text1 += "\(selectedArray1[index])\n"
        }
        
        displayRoomsTextView.text = text1
        
        
       
        
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
