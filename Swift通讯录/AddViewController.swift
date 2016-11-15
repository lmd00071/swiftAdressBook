//
//  AddViewController.swift
//  Swift通讯录
//
//  Created by lmd on 15/11/27.
//  Copyright © 2015年 lmd. All rights reserved.
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
        self.view.backgroundColor=UIColor.white
        
        self.nameLabel = UILabel(frame: CGRect(x: 20,y: 100,width: 80,height: 40))
        nameLabel.textColor=UIColor.black
        nameLabel.text = "姓名"
        self.view.addSubview(nameLabel)
        self.nameLabel.textAlignment = NSTextAlignment.center
        
        
        
        self.nameTextField = UITextField()
        self.nameTextField.frame = CGRect(x: 120, y: 100, width: 200, height: 40)
        if updataModel == nil
        {
            self.nameTextField.placeholder = "  请出入姓名"
            
        }else{
        
            self.nameTextField.text = updataModel.name
        }
        
        self.nameTextField.layer.cornerRadius=10
        self.nameTextField.layer.borderColor=UIColor.lightGray.cgColor
        self.nameTextField.layer.borderWidth=2
        self.view.addSubview(self.nameTextField)
        
        
        self.phoneLabel = UILabel(frame: CGRect(x: 20,y: 180,width: 80,height: 40))
        phoneLabel.textColor=UIColor.black
        phoneLabel.text = "电话"
        self.view.addSubview(phoneLabel)
        self.phoneLabel.textAlignment = NSTextAlignment.center
        
        
        
        self.phoneTextField = UITextField()
        self.phoneTextField.frame = CGRect(x: 120, y: 180, width: 200, height: 40)
        if updataModel == nil
        {
            self.phoneTextField.placeholder = "  请出入电话"
            
        }else{
        
            self.phoneTextField.text = updataModel.phone
        }
        
        self.phoneTextField.layer.cornerRadius=10
        self.phoneTextField.layer.borderColor=UIColor.lightGray.cgColor
        self.phoneTextField.layer.borderWidth=2
        self.view.addSubview(self.phoneTextField)
        
        
        
        self.button = UIButton()
        self.button.frame = CGRect(x: 20, y: 260, width: self.view.frame.size.width-40, height: 30)
        self.button.backgroundColor=UIColor.red
        self.button.setTitle("保存", for: UIControlState())
        self.view.addSubview(self.button)
        self.button.addTarget(self, action: #selector(AddViewController.addButtonAction(_:)), for: UIControlEvents.touchUpInside)
        
        
        // Do any additional setup after loading the view.
    }

    func addButtonAction(_ sender:UIButton)
    {
    
        let model : AddressModel = AddressModel(name: self.nameTextField.text!, phone: self.phoneTextField.text!)
        
        if updataModel == nil{
            
            addressManager.shareManager().addobjectToArray(model)
            
            self.block()

        }else{
            
            addressManager.shareManager().updateObjectToArray(model, index: index)
            self.blockUpDate()
        }
        
        
        
        self.navigationController?.popToRootViewController(animated: true)
    
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
