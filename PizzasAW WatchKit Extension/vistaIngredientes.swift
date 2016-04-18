//
//  vistaIngredientes.swift
//  PizzasAW
//
//  Created by Rodrigo Rubí Delgado on 17/04/16.
//  Copyright © 2016 Rodrigo Rubí Delgado. All rights reserved.
//

import WatchKit
import Foundation


class vistaIngredientes: WKInterfaceController {
    
    var tamaño : String = ""
    var masa : String = ""
    var queso : String = ""
    var ingredientes : String = ""
    
    
    @IBAction func tocino(value: Bool) {
        if value == true {
            ingredientes += "tocino"
            print(ingredientes)
        }
    }

    @IBAction func anchoas(value: Bool) {
        if value == true {
            ingredientes += " ,anchoas"
            print(ingredientes)
        }
    }
    
    @IBAction func peperoni(value: Bool) {
        if value == true {
            ingredientes += " ,peperoni"
            print(ingredientes)
        }
    }
    
    @IBAction func piña(value: Bool) {
        if value == true {
            ingredientes += " ,piña"
            print(ingredientes)
        }
    }
    
    @IBAction func jamon(value: Bool) {
        if value == true {
            ingredientes += " ,jamón"
            print(ingredientes)
        }
    }
    
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Configure interface objects here.
        let contextIngredientes = context as! resultadoQueso
        tamaño = contextIngredientes.mensajeTamaño
        masa = contextIngredientes.mensajeMasa
        queso = contextIngredientes.mensajeQueso
        print(tamaño)
        print(masa)
        print(queso)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        ingredientes = ""
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func seleccionIngredientes() {
        let valorContextoIngredientes = resultadoIngredientes(mt : tamaño, mm : masa, mq : queso, mi : ingredientes)
        pushControllerWithName("Pizza", context: valorContextoIngredientes)
    }
    
}
