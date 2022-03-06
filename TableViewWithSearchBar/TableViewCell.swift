//
//  TableViewCell.swift
//  TableViewWithSearchBar
//
//  Created by muhammad hassan on 06/03/2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblFname: UILabel!
    
    
  
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
