//
//  TableViewCell.swift
//  4H0meW0rk
//
//  Created by Байгелди Акылбек уулу on 12/12/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var textL: UILabel!
    
    
    @IBOutlet weak var imageCell: UIImageView!
    var istaped = false
    override func layoutSubviews() {
        super.layoutSubviews()
        let tap = UITapGestureRecognizer(target: self, action:#selector(tapped))
        imageCell.addGestureRecognizer(tap)
        
    }
    
    @objc func tapped () {
        if istaped == false{
            imageCell.image = UIImage(systemName: "square")
            istaped = true
        }else{
            imageCell.image = UIImage(systemName: "checkmark.square")
            istaped = false
        }
        
    }
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

