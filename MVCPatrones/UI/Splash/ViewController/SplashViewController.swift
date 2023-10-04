//
//  SplashViewController.swift
//  MVCPatrones
//
//  Created by Manuel Cazalla Colmenero on 2/10/23.
//

import UIKit

class SplashViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    //  MARK: - Ciclo De Vida
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }
    // MARK: - Cuando Aparece
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if(!activityIndicator.isAnimating) {
            activityIndicator.startAnimating()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        activityIndicator.stopAnimating()
    }
    //MARK: - Simula Carga de Datos
    private func loadData() {
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) {
            // MARK: - Navegar a la pantalla de Home
            let nextVC = HomeTableViewController()
            self.navigationController?.setViewControllers([nextVC], animated: true)
        }
        
    }
}
