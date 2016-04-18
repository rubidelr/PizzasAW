//
//  vistaPizza.swift
//  PizzasAW
//
//  Created by Rodrigo Rubí Delgado on 17/04/16.
//  Copyright © 2016 Rodrigo Rubí Delgado. All rights reserved.
//

import WatchKit
import Foundation


class vistaPizza: WKInterfaceController {
    
    
    @IBOutlet var tamañoPizza: WKInterfaceLabel!
    
    @IBOutlet var masaPizza: WKInterfaceLabel!
    
    @IBOutlet var quesoPizza: WKInterfaceLabel!
    
    @IBOutlet var ingredientesPizza: WKInterfaceLabel!
    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Configure interface objects here.
        let contextPizza = context as! resultadoIngredientes
        tamañoPizza.setText(contextPizza.mensajeTamaño)
        masaPizza.setText(contextPizza.mensajeMasa)
        quesoPizza.setText(contextPizza.mensajeQueso)
        ingredientesPizza.setText(contextPizza.mensajeIngredientes)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func ordenarPizza() {
    }
    
}
