//
//  DetailViewController.swift
//  Swift通讯录
//
//  Created by 嗒嗒修车 on 16/8/20.
//  Copyright © 2016年 lanou. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var lable : UILabel!
    var lable2 = UILabel()
    var model = DDPerson()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        self.lable = UILabel(frame:CGRectMake(100,100,100,100))
        self.lable.backgroundColor = UIColor.redColor()
        self.lable.text = model.name
        self.view.addSubview(self.lable)
        
        
        lable2 = UILabel(frame : CGRectMake(100,250,100,100))
        lable2.backgroundColor = UIColor.grayColor()
        lable2.numberOfLines = 0
        lable2.text = model.number
        self.view.addSubview(lable2)
        
        
        // Do any additional setup after loading the view.
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
