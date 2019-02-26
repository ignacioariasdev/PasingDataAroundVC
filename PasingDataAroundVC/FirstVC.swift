//
//  ViewController.swift
//  PasingDataAroundVC
//
//  Created by Marlhex on 2019-02-23.
//  Copyright © 2019 Ignacio Arias. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {

    @IBOutlet weak var originalName: UILabel!
   
    let name1 = Player()
    
    func passingName(){
        originalName.text = name1.name
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passingName()
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "toSecondSegue" {
//
//            //Instancia de la pantalla a seguir
//           // let objPantalla2: SecondVC = segue.destination as! SecondVC
//            let svc = segue.destination as! SecondVC
//
//            //Asignacion del mismo valor a la siguiente pantalla
//            objPantalla2.sameName.text = originalName.text
//
////            if svc.sameName == nil {
////                print("Same name has a value of \(String(describing: svc.sameName!.text))")
////
////                svc.sameName!.text = self.futureName.text
////            }
//            //let svc = segue.destination as! SecondVC
//            //svc.sameName!.text = self.futureName.text
//
//            }
//        }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toSecondSegue" {
            
            // Instance of the next screen
            let svc = segue.destination as! SecondVC
            
            // Assigning the same value to the next screen
            svc.sameName!.text = self.originalName.text
        }
    }

    @IBAction func unwindToHome(_ unwindSegue: UIStoryboardSegue) {
        //let sourceViewController = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
    }
}

