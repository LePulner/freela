//
//  ViewController.swift
//  ReceitaApp
//
//  Created by APPLE DEVELOPER ACADEMY on 23/04/19.
//  Copyright © 2019 APPLE DEVELOPER ACADEMY. All rights reserved.
//

import UIKit
import Foundation
class ViewController: UIViewController {
    
    var indice = 0
    @IBOutlet weak var imagemDestaque: UIImageView!
    let trabalhos = [
        Trabalho(imgTrabalho: UIImage(named: "leite")!, descricaoTrabalho: "Identidade Visual etc tal", numCurtidas: 15),
        Trabalho(imgTrabalho: UIImage(named: "lettering")!, descricaoTrabalho: "Id de letteringzinho", numCurtidas: 5),
        Trabalho(imgTrabalho: UIImage(named: "moça")!, descricaoTrabalho: "Pláaaaastico", numCurtidas: 3),
        Trabalho(imgTrabalho: UIImage(named: "rótulo")!, descricaoTrabalho: "rótulinho", numCurtidas: 70),
        
    ]
  
    override func viewDidLoad() {
       
        super.viewDidLoad()
        imagemDestaque.image = trabalhos[indice].imgTrabalho
    }
    
    @IBAction func entrarNoProjeto(_ sender: Any) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "projeto") as? ProjetoViewController{
            self.navigationController?.show(vc,sender: self)
        }
    }
    

    @IBAction func Swiper(_ sender: Any) {
        
        if indice == 3 {
            indice = 0
        } else {
            indice += 1
        }
        imagemDestaque.image = trabalhos[indice].imgTrabalho
    }
    
    
    
}

