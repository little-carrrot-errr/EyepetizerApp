//
//  UILabel+Eye.swift
//  EyepetizerApp
//
//   23.
//     
//

import Foundation

extension UILabel {
    func boundingRectWithSize(size : CGSize) -> CGSize {
        let attribute = [NSFontAttributeName: self.font]
        
        let retSize = (self.text! as NSString).boundingRectWithSize(size, options: [.UsesLineFragmentOrigin, .UsesFontLeading], attributes: attribute, context: nil).size
        return retSize
    }
}