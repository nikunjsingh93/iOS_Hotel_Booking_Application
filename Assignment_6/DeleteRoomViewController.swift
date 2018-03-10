//
//  DeleteRoomViewController.swift
//  Assignment_6
//
//  Created by Nikunj Singh on 3/5/18.
//  Copyright © 2018 Nikunj Singh. All rights reserved.
//

import UIKit
import CoreData

class DeleteRoomViewController: UIViewController {

    @IBOutlet weak var deleteRoomTextField: UITextField!
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
    
    @IBAction func deleteRoomFunc(_ sender: UIBarButtonItem) {
        
        
        let roomNameDel = deleteRoomTextField.text!
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Rooms")
        request.returnsObjectsAsFaults = false
        var stringName : String  = String()
        
        
        do {
            let result = try context.fetch(request)
            for data in result as! [NSManagedObject] {
                stringName  = data.value(forKey: "roomName") as! String
                if stringName == roomNameDel{
                    do {
                        try context.delete(data)
                        appDelegate.saveContext()
                    } catch {
                        print("Failed saving")
                    }
                    
                }
                
            }
            
        } catch {
            
            print("Failed")
        }
        
        
        
//        var i = 0
//
//        for m in roomArray {
//
//            if (roomNameDel == m.roomName) {
//
//                roomArray.remove(at: i)
//
//            }
//            i = i + 1
//
//        }
        
        let alertController = UIAlertController(title: "Success!", message:
            "Room Deleted", preferredStyle: UIAlertControllerStyle.alert)
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
