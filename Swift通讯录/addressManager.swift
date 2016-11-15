//
//  addressManager.swift
//  Swift通讯录
//
//  Created by lanou on 15/11/27.
//  Copyright © 2015年 lanou. All rights reserved.
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
    func addobjectToArray(model:AddressModel)
    {
        self.dataArr.addObject(model)
    
    }
    
    //MARK: 删除数据
    func deleteObjectToAction(index:Int)
    {
        self.dataArr.removeObjectAtIndex(index)
    
    }
    
    //移动数据
    func moveObjectToAction(sourceIndex:Int,toIndex:Int)
    {
    
        let model: AddressModel = self.dataArr[sourceIndex] as! AddressModel
        
        self.dataArr.removeObjectAtIndex(sourceIndex)
        
        self.dataArr.insertObject(model, atIndex: toIndex)
    }
    
    //MARK:修改数据
    func updateObjectToArray(model:AddressModel,index:Int)
    {
    
        self.dataArr.replaceObjectAtIndex(index, withObject: model)
    
    }
    
    

}
