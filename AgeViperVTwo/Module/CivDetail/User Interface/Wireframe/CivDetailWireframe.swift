//
//  CivDetailWireframe.swift
//  AgeViperVTwo
//
//  Created by karma on 5/17/22.
//
//

import UIKit

class CivDetailWireframe {
     weak var view: UIViewController!
}

extension CivDetailWireframe: CivDetailWireframeInput {
    
    var storyboardName: String {return "CivDetail"}
    
    func getMainView() -> UIViewController {
        let service = CivDetailService()
        let interactor = CivDetailInteractor(service: service)
        let presenter = CivDetailPresenter()
        let viewController = viewControllerFromStoryboard(of: CivDetailViewController.self)
        
        viewController.presenter = presenter
        interactor.output = presenter
        presenter.interactor = interactor
        presenter.wireframe = self
        presenter.view = viewController
        
        self.view = viewController
        return viewController
    }
}
