//
//  resultadoMasa.swift
//  PizzasAW
//
//  Created by Rodrigo Rubí Delgado on 17/04/16.
//  Copyright © 2016 Rodrigo Rubí Delgado. All rights reserved.
//

import WatchKit

class resultadoMasa: NSObject {
    var mensajeTamaño : String = ""
    var mensajeMasa : String = ""
    init(mt : String, mm : String) {
        mensajeTamaño = mt
        mensajeMasa = mm
    }
}
