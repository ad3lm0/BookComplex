//
//  CellTableViewCell.swift
//  BookComplex
//
//  Copyright © 2018 Adelmo Oliveira. All rights reserved.
//

import UIKit

class CellTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var TitleLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
