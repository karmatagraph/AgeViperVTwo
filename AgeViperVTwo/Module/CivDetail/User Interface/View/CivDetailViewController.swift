//
//  CivDetailViewController.swift
//  AgeViperVTwo
//
//  Created by karma on 5/17/22.
//
//

import UIKit

class CivDetailViewController: UIViewController {
    
    // MARK: Properties
    var civ: CivilizationStructure?
    var presenter: CivDetailModuleInterface?
    
    // MARK: IBOutlets
    @IBOutlet weak var civName: UILabel!
    
    // MARK: VC's Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }
    
    // MARK: IBActions
    
    // MARK: Other Functions
    
    private func setup() {
        // all setup should be done here
    }
}

// MARK: CivDetailViewInterface
extension CivDetailViewController: CivDetailViewInterface {
    func updateCivDetail(civ: CivilizationStructure) {
        DispatchQueue.main.async {
            self.civName.text = civ.name
        }
    }
    
    
}
