//
//  ViewController.swift
//  DemoSwiftApp
//
//  Created by Isaev Baiel on 03.10.2018.
//  Copyright © 2018 Neobis. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let weathertext = ["Monday, 01 October, Sunny, 20C", "Tuesday, 02 October, Rainy, 13C"]
    let textCellIdentifier = "weatherCell"
  
    @IBOutlet weak var weatherTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        weatherTableView.delegate = self
        weatherTableView.dataSource = self
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weathertext.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
}

