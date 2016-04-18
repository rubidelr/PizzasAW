//
//  resultadoQueso.swift
//  PizzasAW
//
//  Created by Rodrigo Rubí Delgado on 17/04/16.
//  Copyright © 2016 Rodrigo Rubí Delgado. All rights reserved.
//

import WatchKit

class resultadoQueso: NSObject {
    var mensajeTamaño : String = ""
    var mensajeMasa : String = ""
    var mensajeQueso : String = ""
    init(mt : String, mm : String,mq:String) {
        mensajeTamaño = mt
        mensajeMasa = mm
        mensajeQueso = mq
    }
}
