//
//  Detial.swift
//  D2R_Info
//
//  Created by Alex on 2021/12/7.
//  Copyright © 2021 stu24801. All rights reserved.
//

import UIKit

class Detial: UITableViewCell {

    @IBOutlet weak var labelContext: UILabel!
 
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setLabel(_ content:String){
        self.labelContext.text = content
    }
}
