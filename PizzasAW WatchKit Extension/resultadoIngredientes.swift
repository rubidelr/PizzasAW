//
//  resultadoIngredientes.swift
//  PizzasAW
//
//  Created by Rodrigo Rubí Delgado on 17/04/16.
//  Copyright © 2016 Rodrigo Rubí Delgado. All rights reserved.
//

import WatchKit

class resultadoIngredientes: NSObject {
    var mensajeTamaño : String = ""
    var mensajeMasa : String = ""
    var mensajeQueso : String = ""
    var mensajeIngredientes : String = ""
    init(mt : String, mm : String,mq:String, mi : String) {
        mensajeTamaño = mt
        mensajeMasa = mm
        mensajeQueso = mq
        mensajeIngredientes = mi
    }
}
