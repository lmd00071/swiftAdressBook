//
//  ViewController.swift
//  Swift通讯录
//
//  Created by lmd on 15/11/27.
//  Copyright © 2015年 lmd. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var tableView : UITableView!
    var modelArray : NSMutableArray!
    var leftItem : UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.modelArray = NSMutableArray()
        
        NSLog("%@", DDPerson().name)
        
        self.navigationItem.title="通讯录"
        self.tableView = UITableView(frame: self.view.frame,style: UITableViewStyle.plain)
        self.view.addSubview(self.tableView)
        self.tableView.dataSource=self
        self.tableView.delegate=self
        self.tableView.register(addressTableViewCell.self, forCellReuseIdentifier: "cell")
        
        let rightItem : UIBarButtonItem = UIBarButtonItem(title: "添加", style: UIBarButtonItemStyle.plain, target: self, action: #selector(ViewController.addButtonAction))
        
        self.navigationItem.rightBarButtonItem=rightItem
        
        self.leftItem = UIBarButtonItem(title: "编辑", style: UIBarButtonItemStyle.plain, target: self, action: #selector(ViewController.setEdit))
        
        self.navigationItem.leftBarButtonItem=leftItem;
        
    }

    //MARK: 编辑按钮点击方法
    func setEdit()
    {
        if self.tableView.isEditing == true
        {
            self.leftItem.title = "编辑"
            self.tableView.setEditing(false, animated: true)
        
        }else{
            self.leftItem.title = "取消"
            self.tableView.setEditing(true, animated: true)
        
        }
        
        
    
    }
    
    //MARK: 添加按钮点击方法
    func addButtonAction()
    {
    
        let addView : AddViewController = AddViewController()
        
        addView.block = {
            () -> Void in
            
            self.modelArray = NSMutableArray()
            self.modelArray=addressManager.shareManager().dataArr
            self.tableView.reloadData()
            
        }
        
        self.navigationController?.pushViewController(addView, animated: true)
    
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       
        let cell : addressTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! addressTableViewCell
        
        let model : AddressModel = self.modelArray[indexPath.row] as! AddressModel
        
        cell.nameLabel.text = "姓名:  " + model.name!
        
        cell.phoneLabel.text = "电话:  " + model.phone!
        
        return cell
    
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.modelArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100
    }
    

    //删除
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            addressManager.shareManager().deleteObjectToAction(indexPath.row)
            
            self.modelArray = NSMutableArray()
            self.modelArray=addressManager.shareManager().dataArr
                tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.top)
        }
        
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
        addressManager.shareManager().moveObjectToAction(sourceIndexPath.row, toIndex: destinationIndexPath.row)
        
        self.modelArray = NSMutableArray()
        self.modelArray=addressManager.shareManager().dataArr
           tableView.moveRow(at: sourceIndexPath, to: destinationIndexPath)
        
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let model : AddressModel = addressManager.shareManager().dataArr.object(at: indexPath.row) as! AddressModel

        let num = indexPath.row;
        
        if num == 0 {
            let vdc : DetailViewController = DetailViewController()
            vdc.model.shuchu("ewew", and: 33, withSex: 66);
            self.navigationController?.pushViewController(vdc, animated: true)
         
            return;
        }
        
        
        
        
        
        
        let add : AddViewController = AddViewController()
        add.updataModel = model
        add.index=indexPath.row
        
        
        add.blockUpDate = {
            () -> Void in
            
            self.modelArray = NSMutableArray()
            self.modelArray=addressManager.shareManager().dataArr
            self.tableView.reloadData()
            
        }

        self.navigationController?.pushViewController(add, animated: true)
       
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

