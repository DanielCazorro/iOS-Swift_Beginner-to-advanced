//
//  MyCustomTableViewCell.swift
//  TableViews
//
//  Created by Daniel Cazorro Frias  on 12/1/24.
//

import UIKit

class MyCustomTableViewCell: UITableViewCell {
    @IBOutlet weak var myFirstLabel: UILabel!
    @IBOutlet weak var mySecondLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        myFirstLabel.font = UIFont.boldSystemFont(ofSize: 20)
        myFirstLabel.textColor = .blue
        
        backgroundColor = .gray
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        print(myFirstLabel.text ?? "")
    }
    
}
