//
//  DetailViewController.swift
//  Swift通讯录
//
//  Created by 嗒嗒修车 on 16/8/20.
//  Copyright © 2016年 lmd. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var lable : UILabel!
    var lable2 = UILabel()
    var model = DDPerson()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        self.lable = UILabel(frame:CGRect(x: 100,y: 100,width: 100,height: 100))
        self.lable.backgroundColor = UIColor.red
        self.lable.text = model.name
        self.view.addSubview(self.lable)
        
        
        lable2 = UILabel(frame : CGRect(x: 100,y: 250,width: 100,height: 100))
        lable2.backgroundColor = UIColor.gray
        lable2.numberOfLines = 0
        lable2.text = model.number
        self.view.addSubview(lable2)
        
        //貌似swift出来了
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
