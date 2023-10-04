//
//  HomeTableViewCell.swift
//  MVCPatrones
//
//  Created by Manuel Cazalla Colmenero on 2/10/23.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlets
    @IBOutlet weak var nameHomeCell: UILabel!
    @IBOutlet weak var imageHomeCell: UIImageView!
    @IBOutlet weak var viewHomeCell: UIView!
    
    // MARK: - Se llama la primera vez y prepara la celda
    override func awakeFromNib() {
        super.awakeFromNib()
        viewHomeCell.layer.cornerRadius = 4.0
        viewHomeCell.layer.shadowColor = UIColor.gray.cgColor
        viewHomeCell.layer.shadowOffset = .zero
        viewHomeCell.layer.shadowOpacity = 0.7
        viewHomeCell.layer.shadowRadius = 4.0
        
        imageHomeCell.layer.cornerRadius = 4.0
        imageHomeCell.layer.opacity = 0.7
        
    }
    // MARK: - Esta funcion limpia las celdas y las vuelve a utilizar
    override func prepareForReuse() {
        super.prepareForReuse()
        imageHomeCell.image = nil
        nameHomeCell.text = nil
    }
   
    func updateViews(data: HomeCellModel){
        update(name: data.name )
        update(image: data.image)
    
    }
    private func update(name: String?) {
        nameHomeCell.text = name ?? ""
    }
    private func update (image: String?) {
        imageHomeCell.image = UIImage(named: image ?? "") 
        
    }
}
