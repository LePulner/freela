
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
    
    
    @IBAction func Swiper(_ sender: Any) {
        
        if indice == 3 {
            indice = 0
        } else {
            indice += 1
        }
        imagemDestaque.image = trabalhos[indice].imgTrabalho
    }
    
    @IBAction func irParaProximaTela(_ sender: Any) {
        print("teste")
        if let vc = storyboard?.instantiateViewController(withIdentifier: "infosDoProjeto") as? ProjetoViewController{
            self.navigationController?.show(vc, sender: self)


        }
        
        
    }
    
    
}

