//
//  ViewController.swift
//  Assignment_6
//
//  Created by Nikunj Singh on 3/2/18.
//  Copyright © 2018 Nikunj Singh. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        predefinedValues()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func createCust(_ sender: UIButton) {
        let createCustVC = CreateCustViewController(nibName: "CreateCustomer", bundle: nil)
        
       
       
        self.present(createCustVC, animated: true, completion: nil)
        
    }
    
    @IBAction func createRoom(_ sender: UIButton) {
        
        let createRoomVC = CreateRoomViewController(nibName: "CreateRoom", bundle: nil)
        
        self.present(createRoomVC, animated: true, completion: nil)
        
        
    }
    
    @IBAction func displayRooms(_ sender: UIButton) {
        
        let displayRoomVC = DisplayRoomsViewController(nibName: "DisplayRooms", bundle: nil)
        
        self.present(displayRoomVC, animated: true, completion: nil)
    }
    
    @IBAction func displayBookings(_ sender: UIButton) {
        let displayBookingsVC = DisplayBookingViewController(nibName: "DisplayBookings", bundle: nil)
        
        self.present(displayBookingsVC, animated: true, completion: nil)
        
    }
    
    @IBAction func displayCustomers(_ sender: UIButton) {
        let displayCustsVC = DisplayCustomersViewController(nibName: "DisplayCustomers", bundle: nil)
        
        self.present(displayCustsVC, animated: true, completion: nil)
        
    }
    
    
    @IBAction func createBooking(_ sender: UIButton) {
        
        let createBookingVC = CreateBookingViewController(nibName: "CreateBooking", bundle: nil)
        
        self.present(createBookingVC, animated: true, completion: nil)
        
        
    }
    
    
    @IBAction func deleteBooking(_ sender: UIButton) {
        
        let deleteBookingVC = DeleteBookingViewController(nibName: "DeleteBooking", bundle: nil)
        
        self.present(deleteBookingVC, animated: true, completion: nil)
        
        
    }
    
    
    
    @IBAction func searchBooking(_ sender: UIButton) {
        
        let searchBookingVC = SearchBookingViewController(nibName: "SearchBooking", bundle: nil)
        
        self.present(searchBookingVC, animated: true, completion: nil)
        
    }
    
    
    func predefinedValues() {
        
        let customer = Customer()
        
        customer.custName = "Nikunj"
        
        customer.custPhoneNumber = "6173046401"
        
        customer.custAddress = "67, St. Germain Street"
        
        custArray.append(customer)
        
        
        
        let customer1 = Customer()
        
        customer1.custName = "Harsh"
        
        customer1.custPhoneNumber = "4830464087"
        
        customer1.custAddress = "60, St. Germain Street"
        
        custArray.append(customer1)
        
        
        let customer2 = Customer()
        
        customer2.custName = "Chetan"
        
        customer2.custPhoneNumber = "6543042432"
        
        customer2.custAddress = "20, St. Germain Street"
        
        custArray.append(customer2)
        
        
        
        let room = Room()
        
        room.roomName = "101"
        
        room.roomType = "Single"
        
        room.roomPrice = "100$"
        
        let fdate = "02-27-2018"
        
        let tdate = "02-27-2018"
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM-dd-yyyy"
        
        dateRoomFrom = dateFormatter.date(from: fdate)
        dateRoomTo = dateFormatter.date(from: tdate)
        
        room.roomFrom = dateRoomFrom
        room.roomTo = dateRoomTo
        
        roomArray.append(room)
        
        
        
        
        
        let room1 = Room()
        
        room1.roomName = "102"
        
        room1.roomType = "Double"
        
        room1.roomPrice = "250$"
        
        let fdate1 = "03-01-2018"
        
        let tdate1 = "03-01-2018"
        
        dateBookingFrom = dateFormatter.date(from: fdate1)
        dateBookingTo = dateFormatter.date(from: tdate1)
        
        room1.roomFrom = dateBookingFrom
        room1.roomTo = dateBookingTo
        
        roomArray.append(room1)
        
        
        
        let booking1 = Booking()
        
        booking1.bookingName = "book1"
        booking1.bokingOtherCust = "N/A"
        
        booking1.roomObj.roomName = room.roomName
        booking1.roomObj.roomType = room.roomType
        booking1.roomObj.roomFrom = room.roomFrom
        booking1.roomObj.roomTo = room.roomTo
        booking1.roomObj.roomPrice = room.roomPrice
        
        booking1.customerObj.custName = customer.custName
        booking1.customerObj.custAddress = customer.custAddress
        booking1.customerObj.custPhoneNumber = customer.custPhoneNumber
        
        bookArray.append(booking1)
        
        
        
        
        let booking2 = Booking()
        
        booking2.bookingName = "book2"
        booking2.bokingOtherCust = customer2.custName
        
        booking2.roomObj.roomName = room1.roomName
        booking2.roomObj.roomType = room1.roomType
        booking2.roomObj.roomFrom = room1.roomFrom
        booking2.roomObj.roomTo = room1.roomTo
        booking2.roomObj.roomPrice = room1.roomPrice
        
        booking2.customerObj.custName = customer1.custName
        booking2.customerObj.custAddress = customer1.custAddress
        booking2.customerObj.custPhoneNumber = customer1.custPhoneNumber
        
        bookArray.append(booking2)
        
        
    }
    
    
    
}

class Customer {
    
    var custIdNum:String?
    var custName:String?
    var custPhoneNumber:String?
    var custAddress:String?
    
}


class Room {
    
    var roomName:String?
    var roomType:String?
    var roomPrice:String?
    var roomFrom:Date?
    var roomTo:Date?
    
}



class Booking {
    
    var bookingName:String?
    var bokingOtherCust:String?
    
    var customerObj = Customer()
    var roomObj = Room()
    
}



var custObject = Customer()
var roomObject = Room()

var dateRoomFrom:Date?
var dateRoomTo:Date?

var dateBookingFrom:Date?
var dateBookingTo:Date?


var custArray: [Customer] = [Customer]()
var roomArray: [Room] = [Room]()
var bookArray: [Booking] = [Booking]()



var bookingNameGlobal:String?
var bookingOtherCustNameGlobal:String?
var bookingRoomNameGlobal:String?
var bookingRoomTypeGlobal:String?

var searchCustNameTypeGlobal:String?


