//
//  StudentTableViewCell.swift
//  QuizDataSiswaAgain
//
//  Created by Macbook pro on 26/10/17.
//  Copyright © 2017 Smk IDN. All rights reserved.
//

import UIKit

class StudentTableViewCell: UITableViewCell {
    @IBOutlet weak var labelUsername: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var labelSchool: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
