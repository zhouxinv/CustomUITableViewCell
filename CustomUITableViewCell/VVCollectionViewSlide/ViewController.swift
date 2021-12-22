//
//  ViewController.swift
//  VVCollectionViewSlide
//
//  Created by gewei on 2021/12/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 19
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VVTableViewCell", for: indexPath)
            as? VVTableViewCell
        cell?.makeCellTest(indexPath: indexPath)
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    @IBOutlet weak var VVTestTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        VVTestTableView.delegate = self
        VVTestTableView.dataSource = self
        VVTestTableView.register(<#T##nib: UINib?##UINib?#>, forCellReuseIdentifier: <#T##String#>)
        VVTestTableView.register(<#T##cellClass: AnyClass?##AnyClass?#>, forCellReuseIdentifier: <#T##String#>)
//        VVTestTableView.register(VVTableViewCell.self, forCellReuseIdentifier: "VVTableViewCell")
        //UINib.init(nibName: "VVTableViewCell", bundle: Bundle.main),
//        let bundle = Bundle.main.loadNibNamed("VVTableViewCell", owner: nil, options: nil)?.first
        
//        VVTestTableView.register(UINib.init(nibName: "VVTableViewCell", bundle: Bundle.main), forCellReuseIdentifier: "VVTableViewCell")
    }
    
    
    
}

