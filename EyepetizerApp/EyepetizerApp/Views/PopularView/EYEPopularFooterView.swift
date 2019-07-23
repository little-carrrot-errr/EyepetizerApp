//
//  EYEPopularFooterView.swift
//  EyepetizerApp
//
//   29.
//     
//

import UIKit

class EYEPopularFooterView: UICollectionReusableView, Reusable {
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(titleLabel)
        titleLabel.snp_makeConstraints { [unowned self](make) in
            make.edges.equalTo(self)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var titleLabel : UILabel = {
        var titleLabel = UILabel()
        titleLabel.text = "-The End-"
        titleLabel.textColor = UIColor.blackColor()
        titleLabel.textAlignment = .Center
        titleLabel.font = UIFont.customFont_Lobster()
        return titleLabel
    }()
}
