//
//  WDefaultButton.swift
//  Weekand
//
//  Created by Daegeon Choi on 2022/05/20.
//

import UIKit

class WDefaultButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }

    private func setupView() {
        
        self.titleLabel?.adjustsFontForContentSizeCategory = true
        
        if #available(iOS 15.0, *) {
            var configuration = UIButton.Configuration.filled()
            configuration.background.backgroundColor = UIColor.mainColor
            configuration.background.cornerRadius = 10
            configuration.contentInsets = NSDirectionalEdgeInsets.defaultEdgeInset
            self.configuration = configuration
            
        } else {
            
            self.layer.cornerRadius = 10
            self.backgroundColor = UIColor.mainColor
            self.titleLabel?.font = UIFont(name: "PretendardVariable", size: UIFont.labelFontSize)
            self.setTitleColor(.white, for: .normal)
            self.titleEdgeInsets = UIEdgeInsets.defaultEdgeInset
        }
    }

}
