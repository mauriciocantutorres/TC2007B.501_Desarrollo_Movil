//
//  ViewController.swift
//  mySecondApp
//
//  Created by Alumno on 07/10/22.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var calculadora_resultado: UILabel!
    @IBOutlet weak var calculadora_proceso: UILabel!
    
    var proceso:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        borrar_todo()
        // Do any additional setup after loading the view.
    }
    
    func borrar_todo(){
        proceso = ""
        calculadora_proceso.text = ""
        calculadora_resultado.text = ""
    }
    
    func append_proceso(valor: String){
        proceso = proceso + valor
        calculadora_proceso.text = proceso
    }

    @IBAction func allClear(_ sender: Any) {
        borrar_todo()
    }
    
    @IBAction func deleteBoton(_ sender: Any) {
        proceso.removeLast()
        calculadora_proceso.text = proceso
    }
        
    @IBAction func divide_boton(_ sender: Any) {
        append_proceso(valor: "/")
    }

    @IBAction func multiplica_boton(_ sender: Any) {
        append_proceso(valor: "*")
    }
    
    @IBAction func resta_boton(_ sender: Any) {
        append_proceso(valor: "-")
    }
    
    @IBAction func suma_boton(_ sender: Any) {
        append_proceso(valor: "+")
    }
    
    @IBAction func punto_boton(_ sender: Any) {
        append_proceso(valor: ".")
    }
    
    @IBAction func cero_boton(_ sender: Any) {
        append_proceso(valor: "0")
    }
    
    @IBAction func igual_boton(_ sender: Any) {
        let expression = NSExpression(format: proceso)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let stringResultado = formatear_resultado(resultado: result)
        calculadora_resultado.text = stringResultado
        
    }
    
    func formatear_resultado(resultado: Double) -> String{
        if (resultado.truncatingRemainder(dividingBy: 1) == 0){
            return String (format: "%.0f", resultado)
        }
        else{
            return String (format: "%.3f", resultado)
        }
    }
    
    @IBAction func uno_boton(_ sender: Any) {
        append_proceso(valor: "1")
    }
    
    @IBAction func dos_boton(_ sender: Any) {
        append_proceso(valor: "2")
    }
    
    @IBAction func tres_boton(_ sender: Any) {
        append_proceso(valor: "3")
    }
    
    @IBAction func cuatro_boton(_ sender: Any) {
        append_proceso(valor: "4")
    }
    
    @IBAction func cinco_boton(_ sender: Any) {
        append_proceso(valor: "5")
    }
    
    @IBAction func seis_boton(_ sender: Any) {
        append_proceso(valor: "6")
    }
    
    @IBAction func siete_boton(_ sender: Any) {
        append_proceso(valor: "7")
    }
    
    @IBAction func ocho_boton(_ sender: Any) {
        append_proceso(valor: "8")
    }
    
    @IBAction func nueve_boton(_ sender: Any) {
        append_proceso(valor: "9")
    }
}

