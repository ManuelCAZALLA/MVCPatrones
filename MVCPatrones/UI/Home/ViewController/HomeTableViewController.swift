//
//  HomeTableViewController.swift
//  MVCPatrones
//
//  Created by Manuel Cazalla Colmenero on 2/10/23.
//

import UIKit

class HomeTableViewController: UITableViewController {
    
    // MARK: - Ciclo De Vida
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
        
    }
    
    private func registerCell() {
        tableView?.register(UINib(nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeCell")
    }
    // MARK: - Table view data source
        
        override func numberOfSections(in tableView: UITableView) -> Int {
         
            return 1
        }
        
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return sampleCharacterData.count
        }
       
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell", for: indexPath) as? HomeTableViewCell
        else {
            return UITableViewCell()
        }
        
        if(indexPath.row < sampleCharacterData.count) {
            let data =  sampleCharacterData[indexPath.row]
            let homeData = HomeCellModel(image: data.image, name: data.name)
            cell.updateViews(data: homeData)
        }
        return cell
    }
    
       override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nextVC = DetailViewController()
        nextVC.characterData = sampleCharacterData[indexPath.row]
        
        navigationController?.pushViewController(nextVC, animated: true)
    }
    
}

