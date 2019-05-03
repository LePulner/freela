//
//  Trabalho.swift
//  ReceitaApp
//
//  Created by Leticia Linhares Camargo Pulner on 03/05/19.
//  Copyright © 2019 APPLE DEVELOPER ACADEMY. All rights reserved.
//

import Foundation
import UIKit


class Trabalho {
    var imgTrabalho:UIImage
    var descricaoTrabalho:String
    var numCurtidas:Int
    
    init(imgTrabalho:UIImage, descricaoTrabalho:String, numCurtidas:Int ) {
        self.imgTrabalho = imgTrabalho
        self.descricaoTrabalho = descricaoTrabalho
        self.numCurtidas = numCurtidas
        
    } 
}
