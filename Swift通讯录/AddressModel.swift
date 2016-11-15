//
//  AddressModel.swift
//  Swift通讯录
//
//  Created by lanou on 15/11/27.
//  Copyright © 2015年 lanou. All rights reserved.
//

import UIKit

class AddressModel: NSObject {

    var name : String?
    var phone : String?
    init(name:String,phone:String) {
        
        self.name = name
        self.phone = phone
    }
    
}
