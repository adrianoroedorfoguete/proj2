//
//  mainViewController.swift
//  chooseStudent
//
//  Created by CLAUDIA MALHEIROS on 10/4/22.
//

import UIKit

class mainViewController: UIViewController {
    
    var manager = managerStudents()
    let MAIN = UIStoryboard(name: "Main", bundle: nil)

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func showViewAddStudent(_ sender: Any) {
        let ADD_STUDENT:addStudentViewController = MAIN.instantiateViewController(withIdentifier: "addStudent") as! addStudentViewController
        ADD_STUDENT.manager = manager
        self.present(ADD_STUDENT, animated: true, completion: nil)
        performSegue(withIdentifier: "segueAddStudent", sender: nil)
    }
    
    @IBAction func showViewListStudents(_ sender: Any) {
        let LIST_STUDENT:listStudentViewController = MAIN.instantiateViewController(withIdentifier:"listStudents") as! listStudentViewController
        LIST_STUDENT.manager = manager
        self.present(LIST_STUDENT,animated:true, completion: nil)
        performSegue(withIdentifier: "segueListStudents",  sender: nil )
    
    }
    @IBAction func returnMainView(segue: UIStoryboardSegue){}
}
