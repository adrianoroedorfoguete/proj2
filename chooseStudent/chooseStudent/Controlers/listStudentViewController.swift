//
//  listStudentViewController.swift
//  chooseStudent
//
//  Created by CLAUDIA MALHEIROS on 10/4/22.
//

import UIKit

class listStudentViewController: UIViewController {
  
    
    @IBOutlet weak var nome: UILabel!
    
    @IBOutlet weak var dirSeta: UIButton!
    
    @IBOutlet weak var esqSeta: UIButton!
    
    @IBOutlet weak var nota: UILabel!
    var manager = managerStudents()
    var student: Student!
  var cont = 0
    @IBOutlet weak var serie: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
     
        
        dirSeta.isHidden = true
        esqSeta.isHidden = true
      
        
        if manager.escola.count > 0 {
        
            nome.text = manager.escola[0].nomeS
            serie.text = manager.escola[0].serieS
            nota.text = manager.escola[0].notaS
            
            
        }
        
        if manager.escola.count > 1 {
            esqSeta.isHidden = false
            
    
        }
    }

    @IBAction func esqSeta(_ sender: Any) {
    }
    @IBAction func dirSeta(_ sender: Any) {
        cont = cont + 1
        student = manager.listStudent(posicao: cont)
        
        nome.text = student.nomeS
        serie.text = student.serieS
        nota.text = student.notaS
        
        if (cont+1) == manager.escola.count{
            dirSeta.isHidden = true 
        }
    }
    
}
