//
//  MyCustomCollectionViewCell.swift
//  CollectionViews
//
//  Created by Daniel Cazorro Frias  on 12/1/24.
//

import UIKit

class MyCustomCollectionViewCell: UICollectionViewCell {
    
    // IBOutlet
    @IBOutlet weak var myFirstLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        backgroundColor = .lightGray
        
        myFirstLabel.font = UIFont.boldSystemFont(ofSize: 20)
        myFirstLabel.textColor = .blue

    }

}
