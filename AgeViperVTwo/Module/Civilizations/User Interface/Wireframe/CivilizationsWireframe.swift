//
//  CivilizationsWireframe.swift
//  AgeViperVTwo
//
//  Created by karma on 5/17/22.
//
//

import UIKit

class CivilizationsWireframe {
     weak var view: UIViewController!
    private lazy var civDetailWireframe: CivDetailWireframeInput = { CivDetailWireframe() } ()
}

extension CivilizationsWireframe: CivilizationsWireframeInput {
    
    
    
    var storyboardName: String {return "Civilizations"}
    
    func getMainView() -> UIViewController {
        let service = CivilizationsService()
        let interactor = CivilizationsInteractor(service: service)
        let presenter = CivilizationsPresenter()
        let viewController = viewControllerFromStoryboard(of: CivilizationsViewController.self)
        
        viewController.presenter = presenter
        interactor.output = presenter
        presenter.interactor = interactor
        presenter.wireframe = self
        presenter.view = viewController
        
        self.view = viewController
        return viewController
    }
    
    func showTappedCiv() {
        view.navigationController?.pushViewController(civDetailWireframe.getMainView(), animated: true)
    }
}
