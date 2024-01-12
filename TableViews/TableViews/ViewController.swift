//
//  ViewController.swift
//  TableViews
//
//  Created by Daniel Cazorro Frias  on 12/1/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private let myCountries = ["España", "México", "Perú", "Colombia", "Argentina", "EEUU", "Francia", "Italia"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // tableView.backgroundColor = .red
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView()
        
        tableView.register(UINib(nibName: "MyCustomTableViewCell", bundle: nil), forCellReuseIdentifier: "mycustomcell")
        
    }
    
}

// MARK: - UITableViewDataSource
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCountries.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 50
        }
        return 150
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            
            var cell = tableView.dequeueReusableCell(withIdentifier: "mycell")
            if cell == nil{
                cell = UITableViewCell(style: .default, reuseIdentifier: "mycell")
                cell?.backgroundColor = .gray
                cell?.textLabel?.font = UIFont.systemFont(ofSize: 20)
                cell?.accessoryType = .disclosureIndicator
            }
            cell!.textLabel?.text = myCountries[indexPath.row]
            return cell!
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycustomcell", for: indexPath) as? MyCustomTableViewCell
        
        cell?.myFirstLabel.text = String(indexPath.row + 1)
        cell?.mySecondLabel.text = myCountries[indexPath.row]
        
        return cell!
        
    }
}

// MARK: - UITableViewDelegate
extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        
        print(myCountries[indexPath.row])
    }
    
}
