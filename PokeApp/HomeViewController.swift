//
//  ViewController.swift
//  PokeApp
//
//  Created by Maria Fernanda Paz Rodriguez on 29/07/22.
//

import UIKit
import SDWebImage

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    //MARK: - IBOutlets
    @IBOutlet weak var Collection: UICollectionView!
    @IBOutlet weak var vistamenucuadriculada: UIView!
    @IBOutlet weak var vistamenulista: UIView!
    @IBOutlet weak var vistaContenedoraListas: UIView!
    
    //MARK: - IBActions
    @IBAction func menuCuadriculado(_ sender: Any) {
        list = false
        Collection.reloadData()
        
    }
    
    @IBAction func menuLista(_ sender: Any) {
        list = true
        Collection.reloadData()
    }
    
    //MARK: - Properties
    var ElementsArrayPokemon: [(imagen: String, titulo: String)] = []
    var ViewModel = PokeViewModel()
    var list : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Collection.register(UINib(nibName: "PokecollectionCell", bundle: .main), forCellWithReuseIdentifier: "Pokecollection")
        Collection.register(UINib(nibName: "PokeCollection2ViewCell", bundle: .main), forCellWithReuseIdentifier: "pokecollection2")
        ObtenerInfo()
        
    }
    
    func ObtenerInfo() {
        
        ViewModel.getPoke { (Result) in
            
            if let arrayPokemons = (Result?.results) {
                
                Result?.results?.forEach({ Pokemon in
                    let last4 =  Pokemon.url?.suffix(7)
                    let number = "\(last4!)".westernArabicNumeralsOnly
                    self.ElementsArrayPokemon.append((imagen: URLGet.ImagenDefault.replacingOccurrences(of: "{PokeID}", with: number), titulo: Pokemon.name!))
                    
                })
                
                self.Collection.reloadData()
                
                }
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        self.performSegue(withIdentifier: "showDetails", sender: nil)
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return ElementsArrayPokemon.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let index = indexPath.row
        
        if list == false {
            
            let cell = Collection.dequeueReusableCell(withReuseIdentifier: "Pokecollection", for: indexPath) as? PokeCollectionViewCell
            let ImagePoke = URL(string:  ElementsArrayPokemon[index].imagen ?? "")
            cell!.NameLabel.text = ElementsArrayPokemon[index].titulo
            cell!.ImagePokemon.sd_setImage(with: ImagePoke)
            cell!.vistaContenedora.layer.cornerRadius = 8
            cell!.vistaContenedora.clipsToBounds = true
            cell!.vistaContenedora.layer.borderColor = UIColor.gray.cgColor
            cell!.vistaContenedora.layer.borderWidth = 1
            
            return cell!
            
        }else{
            
            let cell = Collection.dequeueReusableCell(withReuseIdentifier: "pokecollection2", for: indexPath) as? PokeCollection2CollectionViewCell
            let ImagePoke = URL(string:  ElementsArrayPokemon[index].imagen ?? "")
            cell!.NameLabel2.text = ElementsArrayPokemon[index].titulo
            cell!.PokeImage2.sd_setImage(with: ImagePoke)
            cell!.vistaContenedora2.layer.cornerRadius = 8
            cell!.vistaContenedora2.clipsToBounds = true
            cell!.vistaContenedora2.layer.borderColor = UIColor.gray.cgColor
            cell!.vistaContenedora2.layer.borderWidth = 1
            
            return cell!
            
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if list == false {
        let size = UIScreen.main.bounds
        return CGSize(width: ((self.Collection.frame.width - 10) / 2), height: (self.view.frame.height / 5))
        }else{
            let size = UIScreen.main.bounds
            return CGSize(width: (self.Collection.frame.width - 10), height: (self.view.frame.height / 7))
            
            }
        }
    
}

extension String {
    var westernArabicNumeralsOnly: String {
        let pattern = UnicodeScalar("0")..."9"
        return String(unicodeScalars
            .flatMap { pattern ~= $0 ? Character($0) : nil })
    }
}