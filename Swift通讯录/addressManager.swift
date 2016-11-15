//
//  addressManager.swift
//  Swift通讯录
//
//  Created by lmd on 15/11/27.
//  Copyright © 2015年 lmd. All rights reserved.
//

import UIKit

class addressManager: NSObject {

    //数组 用于存放model
    var dataArr : NSMutableArray = NSMutableArray()
    
    //声明成单例
    static var manager : addressManager?
    static func shareManager() -> addressManager
    {
        if manager == nil
        {
            manager = addressManager()
        }
    
        return manager!
    }
    
    //MARK: 添加数据
    func addobjectToArray(_ model:AddressModel)
    {
        self.dataArr.add(model)
    
    }
    
    //MARK: 删除数据
    func deleteObjectToAction(_ index:Int)
    {
        self.dataArr.removeObject(at: index)
    
    }
    
    //移动数据
    func moveObjectToAction(_ sourceIndex:Int,toIndex:Int)
    {
    
        let model: AddressModel = self.dataArr[sourceIndex] as! AddressModel
        
        self.dataArr.removeObject(at: sourceIndex)
        
        self.dataArr.insert(model, at: toIndex)
    }
    
    //MARK:修改数据
    func updateObjectToArray(_ model:AddressModel,index:Int)
    {
    
        self.dataArr.replaceObject(at: index, with: model)
    
    }
    
    

}
