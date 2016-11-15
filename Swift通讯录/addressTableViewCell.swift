//
//  addressTableViewCell.swift
//  Swift通讯录
//
//  Created by lmd on 15/11/27.
//  Copyright © 2015年 lmd. All rights reserved.
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
        self.nameLabel.frame = CGRect(x: 20, y: 10, width: 200, height: 40)
        self.phoneLabel.frame = CGRect(x: 20, y: 60, width: 200, height: 40)
        self.nameLabel.backgroundColor = UIColor.clear
        self.phoneLabel.backgroundColor = UIColor.clear
        self.contentView.addSubview(nameLabel)
        self.contentView.addSubview(phoneLabel)
        
    
    }

    
    required init?(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
     
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
