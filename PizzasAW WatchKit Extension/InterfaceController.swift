//
//  InterfaceController.swift
//  PizzasAW WatchKit Extension
//
//  Created by Rodrigo Rubí Delgado on 16/04/16.
//  Copyright © 2016 Rodrigo Rubí Delgado. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    var tamaño : Float = 0
    var tamañoSeleccionado : String = ""
    
    
    @IBOutlet var etiquetaTamaño: WKInterfaceLabel!
    
    @IBAction func valorTamaño(value: Float) {
        tamaño = value
        if tamaño == 1 {
            etiquetaTamaño.setText("Chica")
            tamañoSeleccionado = "Chica"
        }else if tamaño == 2{
            etiquetaTamaño.setText("Mediana")
            tamañoSeleccionado = "Mediana"
        }else if tamaño == 3{
            etiquetaTamaño.setText("Grande")
            tamañoSeleccionado = "Grande"
        }
        print(value)
    }

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        tamañoSeleccionado = "Chica"
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func seleccionTamaño() {
        let valorContextoTamaño = resultadoTamano(m : tamañoSeleccionado)
        pushControllerWithName("Masa", context: valorContextoTamaño)
    }
}
