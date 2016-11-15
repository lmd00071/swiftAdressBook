//
//  addressTableViewCell.swift
//  Swift通讯录
//
//  Created by lanou on 15/11/27.
//  Copyright © 2015年 lanou. All rights reserved.
//

import UIKit

class addressTableViewCell: UITableViewCell {

    var nameLabel : UILabel!
    var phoneLabel : UILabel!
    var modelArr : AddressModel!
    
    override init(style:UITableViewCellStyle,reuseIdentifier:String?){
    
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.nameLabel = UILabel()
        self.phoneLabel = UILabel()
        self.nameLabel.frame = CGRectMake(20, 10, 200, 40)
        self.phoneLabel.frame = CGRectMake(20, 60, 200, 40)
        self.nameLabel.backgroundColor = UIColor.clearColor()
        self.phoneLabel.backgroundColor = UIColor.clearColor()
        self.contentView.addSubview(nameLabel)
        self.contentView.addSubview(phoneLabel)
        
    
    }

    
    required init?(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
     
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
