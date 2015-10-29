//
//  CollectionViewCell.swift
//  CollectionViewUsingClass
//
//  Created by Jason Sturges on 10/29/15.
//  Copyright © 2015 Jason Sturges. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var label: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        let label = UILabel(frame: CGRectZero)
        label.translatesAutoresizingMaskIntoConstraints = false;
        contentView.addSubview(label)
        self.label = label
        
        label.topAnchor.constraintEqualToAnchor(contentView.topAnchor).active = true
        label.leftAnchor.constraintEqualToAnchor(contentView.leftAnchor).active = true
        self.backgroundColor = UIColor.lightGrayColor()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
