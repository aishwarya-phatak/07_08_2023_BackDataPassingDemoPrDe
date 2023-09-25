//
//  ViewController.swift
//  07_08_2023_BackDataPassingDemoPrDe
//
//  Created by Vishal Jagtap on 25/09/23.
//

import UIKit

//Step 4
class ViewController: UIViewController, BackwardDataPassing{
    @IBOutlet weak var userNameLabel: UILabel!
    private let secondViewControllerIdentifier = "SecondViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func btnMoveToSVC(_ sender: Any) {
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: secondViewControllerIdentifier) as! SecondViewController
        
        secondViewController.passDataBackDelegate = self //step 6 
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    //Step 5
    func passDataBack(username: String) {
        self.userNameLabel.text = username
    }
}
