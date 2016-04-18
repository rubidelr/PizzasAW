//
//  vistaQueso.swift
//  PizzasAW
//
//  Created by Rodrigo Rubí Delgado on 17/04/16.
//  Copyright © 2016 Rodrigo Rubí Delgado. All rights reserved.
//

import WatchKit
import Foundation


class vistaQueso: WKInterfaceController {
    
    var tamaño : String = ""
    var masa : String = ""
    var queso : String = ""

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Configure interface objects here.
        let contextQueso = context as! resultadoMasa
        tamaño = contextQueso.mensajeTamaño
        masa = contextQueso.mensajeMasa
        print(tamaño)
        print(masa)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func quesoMozarella() {
        queso = "Mozzarella"
        let valorContextoQueso = resultadoQueso(mt : tamaño, mm : masa, mq : queso)
        pushControllerWithName("Ingredientes", context: valorContextoQueso)
    }
    
    @IBAction func quesoCheddar() {
        queso = "Cheddar"
        let valorContextoQueso = resultadoQueso(mt : tamaño, mm : masa, mq : queso)
        pushControllerWithName("Ingredientes", context: valorContextoQueso)
    }
    
    @IBAction func quesoParmesano() {
        queso = "Parmesano"
        let valorContextoQueso = resultadoQueso(mt : tamaño, mm : masa, mq : queso)
        pushControllerWithName("Ingredientes", context: valorContextoQueso)
    }
    
    @IBAction func sinQueso() {
        queso = "Sin queso"
        let valorContextoQueso = resultadoQueso(mt : tamaño, mm : masa, mq : queso)
        pushControllerWithName("Ingredientes", context: valorContextoQueso)
    }
    
}
