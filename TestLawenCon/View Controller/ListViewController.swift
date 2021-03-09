//
//  ListViewController.swift
//  TestLawenCon
//
//  Created by Rizqi Imam Gilang Widianto on 09/03/21.
//

import UIKit

class ListViewController: UIViewController {
    var tableData = ["DATA 1","DATA 2","DATA 3","DATA 4"]
    var listUserName = ""
    

    @IBOutlet weak var listTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Log Out", style: .plain, target: self, action: #selector(dismissToLogIn(sender:)))
    }
    @objc private func dismissToLogIn(sender: UIViewController){
        UserDefaults.standard.set(false, forKey: "status")
        self.navigationController?.popToRootViewController(animated: true)


    }

}


extension ListViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell", for: indexPath) as! ListTableViewCell
        cell.listLabel.text = tableData[indexPath.row]
        return cell

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let finalViewController = storyBoard.instantiateViewController(withIdentifier: "FinalViewController") as! FinalViewController
        finalViewController.finalUserName = listUserName
        finalViewController.finalSelectedCell = tableData[indexPath.row]
        self.navigationController?.pushViewController(finalViewController, animated: true)
    }
    
    
}
