//
//  DetailViewController.swift
//  Todo
//
//  Created by 李嘉敏 on 15/6/14.
//  Copyright (c) 2015年 jimmylee. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController , UITextFieldDelegate{
    
    @IBOutlet weak var apple: UIButton!
    @IBOutlet weak var wechat: UIButton!
    @IBOutlet weak var woman: UIButton!
    @IBOutlet weak var apple2: UIButton!
    
    @IBOutlet weak var todo: UITextField!
    @IBOutlet weak var datepicker: UIDatePicker!
    @IBOutlet weak var button: UIButton!
    
    var todoModel: TodoModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        if let todoM = todoModel{
            todo.text = todoM.title
            datepicker.date = todoM.date
            switch todoM.image{
            case "ic_apple":
                resetButtons(apple)
            case "ic_woman":
                resetButtons(woman)
            case "ic_wechat":
                resetButtons(wechat)
            case "ic_apple2":
                resetButtons(apple2)
            default :
                resetButtons(apple2)
            }
        }
        
        todo.delegate = self
        
        configTraitOverrideForSize(view.bounds.size)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func resetButtons(button: UIButton){
        apple.selected = false
        wechat.selected = false
        woman.selected = false
        apple2.selected = false
        button.selected = true
    }
    
    
    @IBAction func appleTap(sender: AnyObject) {
        resetButtons(apple)
    }
    
    @IBAction func wechatTap(sender: AnyObject) {
        resetButtons(wechat)
    }
    
    @IBAction func womanTap(sender: AnyObject) {
        resetButtons(woman)
    }
    
    @IBAction func apple2Tap(sender: AnyObject) {
        resetButtons(apple2)
    }
    
    @IBAction func buttonTap(sender: AnyObject) {
        var image = ""
        if(apple.selected){
            image = "ic_apple"
        }else if(wechat.selected){
            image = "ic_wechat"
            
        }else if(woman.selected){
            image = "ic_woman"
        }
        else if(apple2.selected){
            image = "ic_apple"
        }
        
        let uuid = NSUUID().UUIDString
        
        let newTodoModel = TodoModel(id: uuid, image: image, title:todo.text , date: datepicker.date)
        
        if todoModel == nil{
            todos.append(newTodoModel)
        }else{
            todoModel?.image = image
            todoModel?.title = todo.text
            todoModel?.date = datepicker.date
        }
        
    }
    
    //return键，隐藏键盘
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        todo.resignFirstResponder()
        return true
    }
    
    // 触摸隐藏键盘
    override func touchesEnded(touches: Set<NSObject>, withEvent event: UIEvent) {
        todo.resignFirstResponder()
    }
    
    //强制使用compact视图，此方法测试未通过
    func configTraitOverrideForSize(size: CGSize){
        var tc: UITraitCollection?
        
        
        if size.width < 750 {
            tc = UITraitCollection(horizontalSizeClass: UIUserInterfaceSizeClass.Compact)

        }
        
        for vc in childViewControllers{
            setOverrideTraitCollection(tc, forChildViewController: vc as! UIViewController)
        }
    }
    
    //屏幕旋转
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        
    }
    
}
