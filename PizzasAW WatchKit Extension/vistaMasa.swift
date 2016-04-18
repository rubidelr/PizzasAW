//
//  vistaMasa.swift
//  PizzasAW
//
//  Created by Rodrigo Rubí Delgado on 17/04/16.
//  Copyright © 2016 Rodrigo Rubí Delgado. All rights reserved.
//

import WatchKit
import Foundation


class vistaMasa: WKInterfaceController {

    var tamaño : String = ""
    var masa : String = ""
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Configure interface objects here.
        let contextMasa = context as! resultadoTamano
        tamaño = contextMasa.mensajeTamaño
        print(tamaño)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func masaDelgada() {
        masa = "Delgada"
        let valorContextoMasa = resultadoMasa(mt : tamaño, mm : masa)
        pushControllerWithName("Queso", context: valorContextoMasa)
    }
   
    @IBAction func masaCrujiente() {
        masa = "Crujiente"
        let valorContextoMasa = resultadoMasa(mt : tamaño, mm : masa)
        pushControllerWithName("Queso", context: valorContextoMasa)
    }
    
    @IBAction func masaGruesa() {
        masa = "Gruesa"
        let valorContextoMasa = resultadoMasa(mt : tamaño, mm : masa)
        pushControllerWithName("Queso", context: valorContextoMasa)
    }
    
    

}
