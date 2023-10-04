//
//  DetailViewController.swift
//  MVCPatrones
//
//  Created by Manuel Cazalla Colmenero on 3/10/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    var characterData: CharacterModel?
    
    // IBOUTLETS
    @IBOutlet weak var imageDetail: UIImageView!
    
    @IBOutlet weak var nameDetail: UILabel!
    
    @IBOutlet weak var descriptionDetail: UITextView!
    // Ciclo de Vida
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView(characterData: characterData)
        }
    
    func updateView(characterData: CharacterModel?) {
        update(name: characterData?.name)
        update(image: characterData?.image)
        update(description: (characterData?.description))
    }
    // Metodos Privados
    private func update(name: String?) {
        nameDetail.text = name ?? ""
    }

    private func update(image: String?) {
        imageDetail.image = UIImage(named: image ?? "")
    }
    private func update(description: String?) {
        descriptionDetail.text = description ?? ""
    }

}
