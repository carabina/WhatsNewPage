//
//  ClosePageButton.swift
//  Pods-WhatsNewPage_Example
//
//  Created by Sahil Gangele on 12/9/17.
//

import UIKit

public class ClosePageButton: UIButton {
    
    var buttonTitleFont: UIFont {
            return UIFont.systemFont(ofSize: 20, weight: .medium)
    }
    
    var attributedStringAttributes: [NSAttributedStringKey : Any] {
        return [.foregroundColor:UIColor.white, .font:self.buttonTitleFont]
    }
    
    public init(frame: CGRect, backgroundColor: UIColor, buttonTitle: String) {
        super.init(frame: frame)
        self.backgroundColor = backgroundColor
        self.layer.cornerRadius = 8.0
        let attributedString = NSAttributedString(string: buttonTitle, attributes: self.attributedStringAttributes)
        self.setAttributedTitle(attributedString, for: .normal)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.layer.cornerRadius = 8.0
    }
    
    
}
