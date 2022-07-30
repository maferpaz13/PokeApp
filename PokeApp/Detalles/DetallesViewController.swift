//
//  DetallesViewController.swift
//  PokeApp
//
//  Created by Maria Fernanda Paz Rodriguez on 29/07/22.
//

import UIKit
import SDWebImage

class DetallesViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var imagePoke: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descripcionLabel: UILabel!
    @IBOutlet weak var habilidadesStack: UIStackView!
    @IBOutlet weak var stackCompleto: UIStackView!
    
    //MARK: - IBActions
    @IBAction func back(_ sender: Any) {
        _ = self.navigationController?.popViewController(animated: true)
    }
    
    //MARK: - Properties
    var url: String = ""
    var ViewModel = pokeInfoViewModel()
    var elementArrayDescrip : [(PokeDescriptionModel.PokeData?)] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        obtenerInfo()
    }
    
    func obtenerInfo() {
        
        showLoadingView(vista: self)
        
        ViewModel.getPokeDescrip(url: url) { (Result) in
            
            let ImagePoke = URL(string:  (Result?.sprites?.front_default!)!)
            self.imagePoke.sd_setImage(with: ImagePoke)
                self.nameLabel.text = Result?.name
            
                self.ViewModel.getPokeEspecies(url: (Result?.species?.url!)!) { (Result) in
                    
                    let index = Result?.flavor_text_entries?.firstIndex{$0.language!.name == "es"}
                
                    self.descripcionLabel.text = Result?.flavor_text_entries![index!].flavor_text!
                    
                }
            
            Result?.abilities?.forEach({ habilidades in
                
                let ability = habilidades.ability?.name
                let agregar = (Bundle.main.loadNibNamed("vistaHabilidadesCell", owner: self, options: nil)?.first as? stackVistaHabilidades)!
                
                agregar.descripcionLabel.text = ability
                self.habilidadesStack.addArrangedSubview(agregar)
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    
                    self.stackCompleto.isHidden = false
                    HideLoadingView(vista: self)
                }
                
            })
            
            }
        
    }

}
