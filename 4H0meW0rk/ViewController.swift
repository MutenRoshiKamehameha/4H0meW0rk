//
//  ViewController.swift
//  4H0meW0rk
//
//  Created by Байгелди Акылбек уулу on 1/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    var adress = [String]()
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var priceLabel: UILabel!
    var price = 0
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

 
    
    @IBAction func button(_ sender: Any) {
        var alertTextFiled = UITextField()
        let alert = UIAlertController(title: "Хотите добавить адрес?", message: "Введите ниже", preferredStyle: .alert)
        alert.addTextField { textfield in
            alertTextFiled = textfield
        }
        let actionYes = UIAlertAction(title: "OK", style: .default) { UIAlertAction in
            self.adress.append(alertTextFiled.text ?? "12")
            self.price += Int.random(in: 100...150)
            self.priceLabel.text = "\(self.price)"
            self.tableView.reloadData()
            self.tableView.reloadData()
        }
        let actionNo = UIAlertAction(title: "No", style: .default)
        
        alert.addAction(actionYes)
        alert.addAction(actionNo)
        present(alert, animated: true)
        
    }
    
    
}

extension ViewController:UITableViewDelegate, UITableViewDataSource{
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return adress.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "adress_cell", for: indexPath)
        cell.textLabel?.text = adress[indexPath.row]
        return cell
    }
    
    
}

