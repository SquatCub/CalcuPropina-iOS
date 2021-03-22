//
//  PagoViewController.swift
//  CalcPropina
//
//  Created by Brandon Rodriguez Molina on 16/03/21.
//

import UIKit

class PagoViewController: UIViewController {
    var pago: String?
    
    @IBOutlet weak var resultadoLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        resultadoLabel.text = pago
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
