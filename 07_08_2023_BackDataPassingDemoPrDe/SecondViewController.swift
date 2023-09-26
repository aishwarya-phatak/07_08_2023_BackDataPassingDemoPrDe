//
//  SecondViewController.swift
//  07_08_2023_BackDataPassingDemoPrDe
//
//  Created by Vishal Jagtap on 25/09/23.
//

import UIKit

//Step 1
//protocol BackwardDataPassing{
//    func passDataBack(username : String)
//}

class SecondViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    
    var passDataBackDelegate : BackwardDataPassing?     //Step 2
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    
    @IBAction func btnBack(_ sender: Any) {
        //approach 2 - of passing object of Student
        
        guard let backDataPassDelegate1 = passDataBackDelegate else { return }
        
        //extract values from textfields
        let usernameExt = self.userNameTextField.text
        let lasnameExt = self.lastNameTextField.text
        let cityExt = self.cityTextField.text
        
        //create Student Object by passing values extracted from text fields entered by the user
        let studnetObject = Student(
            username: usernameExt!,
            lastname: lasnameExt!,
            city: cityExt!)
        
        backDataPassDelegate1.passDataBack(student: studnetObject)
        
        //approach 1
//        guard let backDataPassDelgate1 = passDataBackDelegate else { return }
//
//        let usernameExtracted = self.userNameTextField.text
//        let lastnameExtracted = self.lastNameTextField.text
//        let cityExracted = self.cityTextField.text
//
//        //Step 3
//        backDataPassDelgate1.passDataBack(
//            username: usernameExtracted!,
//            lastname: lastnameExtracted!,
//            city: cityExracted!)
//
        self.navigationController?.popViewController(animated: true)
    }
}
