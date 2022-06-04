//
//  AppCoordinator.swift
//  Weekand
//
//  Created by 이호영 on 2022/05/31.
//

import Foundation
import UIKit

class WelcomeCoordinator: NSObject, Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    var type: CoordinatorType = .welcome
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let welcomeViewController = WelcomeViewController()
        welcomeViewController.viewModel = WelcomeViewModel(coordinator: self)
        self.navigationController.pushViewController(welcomeViewController, animated: true)
    }
    
    func showSignInScene() {
        let signInCoordinator = SignInCoordinator(navigationController: self.navigationController)
        signInCoordinator.finishDelegate = self
        childCoordinators.append(signInCoordinator)
        signInCoordinator.start()
    }
    
    func showSignUpScene() {
        let signUpCoordinator = SignUpCoordinator(navigationController: self.navigationController)
        signUpCoordinator.finishDelegate = self
        childCoordinators.append(signUpCoordinator)
        signUpCoordinator.start()
    }
}

extension WelcomeCoordinator: CoordinatorDidFinishDelegate {
    func childDidFinish(_ child: Coordinator) {
        self.childCoordinators = self.childCoordinators.filter({ $0.type != child.type })
        navigationController.popToRootViewController(animated: true)
    }
}

protocol CoordinatorDidFinishDelegate: AnyObject {
    func childDidFinish(_ child: Coordinator)
}
