//
//  VVTableViewCell.swift
//  VVCollectionViewSlide
//
//  Created by gewei on 2021/12/22.
//

import Foundation
import UIKit

class VVTableViewCell: UITableViewCell {
    @IBOutlet weak var labTestName: UILabel!
    
    func makeCellTest(indexPath: IndexPath) -> Void {
        labTestName.text = "VVTableViewCell" + "\(indexPath.row)"
    }
    
}
