//
//  ViewControllerExtension.swift
//  BeautyGallery
//
//  Created by 李嘉敏 on 15/5/26.
//  Copyright (c) 2015年 jimmylee. All rights reserved.
//

import UIKit

extension ViewController : UIPickerViewDataSource {
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1
    }
    

    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return 3
    }

}

extension ViewController : UIPickerViewDelegate{
     func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String!{
        return names[row]
    }
}
