//
//  FlyButton.swift
//  D2R_Info
//
//  Created by Alex on 2021/12/11.
//  Copyright © 2021 stu24801. All rights reserved.
//

import UIKit

class FlyButton: UIButton {


    override func draw(_ rect: CGRect) {
        self.floatingButtonShadow(self)
    }
   

    func floatingButtonShadow(_ button: UIButton) {
        // 陰影偏移量
        button.layer.shadowOffset = CGSize(width: button.bounds.width / 10, height: button.bounds.width / 10)
        // 陰影透明度
        button.layer.shadowOpacity = 0.75
        // 陰影模糊度
        button.layer.shadowRadius = 5
        // 陰影顏色
        button.layer.shadowColor = UIColor.black.cgColor
    }


}
