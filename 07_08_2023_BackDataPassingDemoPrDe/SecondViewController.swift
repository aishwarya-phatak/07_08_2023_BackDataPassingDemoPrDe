//
//  SecondViewController.swift
//  07_08_2023_BackDataPassingDemoPrDe
//
//  Created by Vishal Jagtap on 25/09/23.
//

import UIKit

//Step 1
protocol BackwardDataPassing{
    func passDataBack(username : String)
}

class SecondViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    var passDataBackDelegate : BackwardDataPassing?     //Step 2
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    
    @IBAction func btnBack(_ sender: Any) {
        guard let backDataPassDelgate1 = passDataBackDelegate else { return }
        
        let usernameExtracted = self.userNameTextField.text
        
        //Step 3
        backDataPassDelgate1.passDataBack(username: usernameExtracted!)
        
        self.navigationController?.popViewController(animated: true)
    }
}
