//
//  TableVC.swift
//  Template
//
//  Created by Iain Coleman on 16/01/2018.
//  Copyright © 2018 Iain Coleman. All rights reserved.
//

import UIKit


class TableVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //Outlets
    @IBOutlet weak var tableView: UITableView!
    
    //Properties

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

    }

    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //Return the array count for example
        return 1
    }

    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: CELL_CUSTOM_CELL) as? CustomCell {
            
            //Configure cell here
            
            return cell
        } else {
            return CustomCell()
        }
        
    }
    

}
