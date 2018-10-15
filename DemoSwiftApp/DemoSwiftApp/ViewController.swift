//
//  ViewController.swift
//  DemoSwiftApp
//
//  Created by Isaev Baiel on 03.10.2018.
//  Copyright © 2018 Neobis. All rights reserved.
//

import UIKit

//let a = MainList(list: <#[List]#>)
//let b = List(main: <#Main#>, weather: <#[Weather]#>)

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let weatherDay = ["Monday", "Tuesday", "Monday", "Tuesday", "Monday", "Tuesday"]
    let weatherDate = ["01 October", "02 October", "01 October", "02 October", "01 October", "02 October"]
    let weatherDescrp = ["Sunny", "Rainy", "Sunny", "Rainy", "Sunny", "Rainy"]
    let temp = ["20C", "13C", "20C", "13C", "20C", "13C"]
  
    @IBOutlet weak var weatherTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        weatherTableView.delegate = self
        weatherTableView.dataSource = self
        
        parseJson()
    }
    
    
    
    
    func parseJson() {
        let path = Bundle.main.path(forResource: "weather", ofType: "json")
        if let data = NSData(contentsOf: URL(fileURLWithPath: path!)) {
            do {
                let list = try JSONDecoder().decode(MainList.self, from: data as Data)
                print(list.list[0].weather[0].main)
            } catch let e {
                print(e)
            }
        }
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weatherDate.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "weatherCell") as! WeatherTableViewCell
        
        cell.weatherDay.text = weatherDay[indexPath.row]
        cell.weatherDate.text = weatherDate[indexPath.row]
        cell.weatherDescrp.text = weatherDescrp[indexPath.row]
        cell.weatherTemp.text = temp[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

