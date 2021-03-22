//
//  ViewController.swift
//  CalcPropina
//
//  Created by Brandon Rodriguez Molina on 15/03/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalCuenta: UITextField!
    @IBOutlet weak var cuentaSlider: UISlider!
    @IBOutlet weak var cuentaLabel: UILabel!
    @IBOutlet weak var personaSlider: UISlider!
    @IBOutlet weak var personaLabel: UILabel!
    var calculo: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func cuentaSliderAction(_ sender: UISlider) {
        cuentaLabel.text = String(Int(sender.value))+"%"
    }
    @IBAction func personaSliderAction(_ sender: UISlider) {
        personaLabel.text = String(Int(sender.value))
    }
    @IBAction func calcBtn(_ sender: UIButton) {
        let total = Double(totalCuenta.text!) ?? 0.0
        let personas = Int(personaSlider.value)
        let porcentaje = Double(Int(cuentaSlider.value)) / 100
        calculo = String(format: "%.2f", (total + (total * porcentaje)) / Double(personas)) + " MXN"
        
        performSegue(withIdentifier: "pago", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "pago" {
            let destino = segue.destination as! PagoViewController
            destino.pago = calculo
        }
    }
    

}

