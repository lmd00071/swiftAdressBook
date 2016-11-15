//
//  AddViewController.swift
//  Swift通讯录
//
//  Created by lanou on 15/11/27.
//  Copyright © 2015年 lanou. All rights reserved.
//

import UIKit

typealias BLOCK = () -> Void

class AddViewController: UIViewController {

    var nameLabel : UILabel!
    var phoneLabel : UILabel!
    var nameTextField : UITextField!
    var phoneTextField : UITextField!
    var button : UIButton!
    var block : BLOCK!
    var blockUpDate : BLOCK!
    var updataModel : AddressModel!
    var index : Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor=UIColor.whiteColor()
        
        self.nameLabel = UILabel(frame: CGRectMake(20,100,80,40))
        nameLabel.textColor=UIColor.blackColor()
        nameLabel.text = "姓名"
        self.view.addSubview(nameLabel)
        self.nameLabel.textAlignment = NSTextAlignment.Center
        
        
        
        self.nameTextField = UITextField()
        self.nameTextField.frame = CGRectMake(120, 100, 200, 40)
        if updataModel == nil
        {
            self.nameTextField.placeholder = "  请出入姓名"
            
        }else{
        
            self.nameTextField.text = updataModel.name
        }
        
        self.nameTextField.layer.cornerRadius=10
        self.nameTextField.layer.borderColor=UIColor.lightGrayColor().CGColor
        self.nameTextField.layer.borderWidth=2
        self.view.addSubview(self.nameTextField)
        
        
        self.phoneLabel = UILabel(frame: CGRectMake(20,180,80,40))
        phoneLabel.textColor=UIColor.blackColor()
        phoneLabel.text = "电话"
        self.view.addSubview(phoneLabel)
        self.phoneLabel.textAlignment = NSTextAlignment.Center
        
        
        
        self.phoneTextField = UITextField()
        self.phoneTextField.frame = CGRectMake(120, 180, 200, 40)
        if updataModel == nil
        {
            self.phoneTextField.placeholder = "  请出入电话"
            
        }else{
        
            self.phoneTextField.text = updataModel.phone
        }
        
        self.phoneTextField.layer.cornerRadius=10
        self.phoneTextField.layer.borderColor=UIColor.lightGrayColor().CGColor
        self.phoneTextField.layer.borderWidth=2
        self.view.addSubview(self.phoneTextField)
        
        
        
        self.button = UIButton()
        self.button.frame = CGRectMake(20, 260, self.view.frame.size.width-40, 30)
        self.button.backgroundColor=UIColor.redColor()
        self.button.setTitle("保存", forState: UIControlState.Normal)
        self.view.addSubview(self.button)
        self.button.addTarget(self, action: #selector(AddViewController.addButtonAction(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        
        
        // Do any additional setup after loading the view.
    }

    func addButtonAction(sender:UIButton)
    {
    
        let model : AddressModel = AddressModel(name: self.nameTextField.text!, phone: self.phoneTextField.text!)
        
        if updataModel == nil{
            
            addressManager.shareManager().addobjectToArray(model)
            
            self.block()

        }else{
            
            addressManager.shareManager().updateObjectToArray(model, index: index)
            self.blockUpDate()
        }
        
        
        
        self.navigationController?.popToRootViewControllerAnimated(true)
    
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
