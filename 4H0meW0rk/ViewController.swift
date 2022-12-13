//
//  ViewController.swift
//  3monthTest
//
//  Created by Байгелди Акылбек уулу on 1/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    var zametki: [String] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Заметки"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.rightBarButtonItem = UIBarButtonItem.init(image: UIImage(systemName: "plus"), style: .plain, target: self, action: #selector(rightBarButtonTap))
        
    }
        @objc func rightBarButtonTap(){
                let alert = UIAlertController(title: "Новая заметка", message: "", preferredStyle: .alert)
                
                present(alert, animated: true)
                
                var text = UITextField()
                alert.addTextField { textF in
                    text = textF
                    
                }
                
                let okAction = UIAlertAction(title: "Yes", style: .cancel) { action in
                    self.zametki.insert(text.text ?? "", at: 0)
                    self.tableView.reloadData()
                }
                let noAction = UIAlertAction(title: "No", style: .destructive){ action in
            ()
                    
                }
                alert.addAction(okAction)
                alert.addAction(noAction)
            }
        // Do any additional setup after loading the view.
    }
    

 
//    
//    @IBAction func button(_ sender: Any) {
//        var alertTextFiled = UITextField()
//        let alert = UIAlertController(title: "Хотите добавить заметку?", message: "Введите ниже", preferredStyle: .alert)
//        alert.addTextField { textfield in
//            alertTextFiled = textfield
//        }
//        let actionYes = UIAlertAction(title: "OK", style: .default) { UIAlertAction in
//            self.zametki.append(alertTextFiled.text ?? "12")
//         
//            self.tableView.reloadData()
//            self.tableView.reloadData()
//        }
//        let actionNo = UIAlertAction(title: "No", style: .default)
//        
//        alert.addAction(actionYes)
//        alert.addAction(actionNo)
//        present(alert, animated: true)
//        
//    }
//    
//    
//}

extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return zametki.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "adress_cell", for: indexPath) as! TableViewCell
        
        cell.textLabel?.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        
        cell.textL.text = zametki[indexPath.row]
        cell.imageCell.image = UIImage(systemName: "square")
        
        return cell
    }
    
}
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
}
