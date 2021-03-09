//
//  FinalViewController.swift
//  TestLawenCon
//
//  Created by Rizqi Imam Gilang Widianto on 09/03/21.
//

import UIKit

class FinalViewController: UIViewController {

    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var selectedCellLabel: UILabel!
    
    var finalUserName = ""
    var finalSelectedCell = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = finalUserName
        selectedCellLabel.text = finalSelectedCell

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
