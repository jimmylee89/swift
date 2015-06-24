//
//  ViewController.swift
//  LoveFinder
//
//  Created by 李嘉敏 on 15/5/24.
//  Copyright (c) 2015年 jimmylee. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate{

    @IBOutlet weak var name:UITextField!
    @IBOutlet weak var sex:UISegmentedControl!
    @IBOutlet weak var hei:UILabel!
    @IBOutlet weak var date:UIDatePicker!
    @IBOutlet weak var house:UISwitch!
    @IBOutlet weak var btn:UIButton!
    @IBOutlet weak var info:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name.delegate = self
    }

    
    @IBAction func onTap(sender: AnyObject){
        let sexValue = sex.selectedSegmentIndex==0 ? "高富帅" : "白富美"
        let calendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)
        let now = NSDate()
        let components = calendar!.components(NSCalendarUnit.CalendarUnitYear, fromDate: date.date, toDate: now, options: NSCalendarOptions())
        let hasHouse = house.on ? "有房" : "没房"
        println(hei.text)
        info.text = "\(name.text),\(sexValue), 身高\(hei.text)，年龄\(components.year),\(hasHouse),求交往"
        println(info.text)
    }
    
    
    @IBAction func heightChange(sender: AnyObject){
        var slider = sender as! UISlider
        var i = Int(slider.value)
       
        hei.text = "\(i)cm"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool{
            textField.resignFirstResponder()
        return true
    }


}

