//
//  ViewController.swift
//  PasingDataAroundVC
//
//  Created by Marlhex on 2019-02-23.
//  Copyright © 2019 Ignacio Arias. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {

    @IBOutlet weak var futureName: UILabel!
   
    let name1 = Player()
    
    func passingName(){
        futureName.text = name1.name
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passingName()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondSegue" {
            
            //Instancia de la pantalla a seguir
            //let objPantalla2: SecondVC = segue.destination as! SecondVC
            let svc = segue.destination as! SecondVC
            
            //Asignacion del mismo valor a la siguiente pantalla
            //objPantalla2.sameName.text? = futureName.text!
            svc.sameName.text = futureName.text!

        }
    }


    @IBAction func unwindToHome(_ unwindSegue: UIStoryboardSegue) {
        //let sourceViewController = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
    }
    
    
    
}

