//
//  ScheduleEditCoordinator.swift
//  Weekand
//
//  Created by 이호영 on 2022/07/05.
//

import Foundation
import UIKit

class ScheduleEditCoordinator: Coordinator {
    weak var finishDelegate: CoordinatorDidFinishDelegate?
    var navigationController: UINavigationController
    var childCoordinators: [Coordinator] = []
    var scheduleEditViewController: ScheduleEditViewController
    var type: CoordinatorType = .scheduleEdit
    var scheduleEditUseCase: ScheduleEditUseCase
    
    required init() {
        self.scheduleEditViewController = ScheduleEditViewController()
        self.navigationController = UINavigationController(rootViewController: scheduleEditViewController)
        self.navigationController.modalPresentationStyle = .fullScreen
        self.scheduleEditUseCase = ScheduleEditUseCase()
    }
    
    func start() {
        self.scheduleEditViewController.viewModel = ScheduleEditViewModel(coordinator: self, scheduleEditUseCase: scheduleEditUseCase)
    }
    
    func presentRepeatSheet() {
        let repeatSheetViewController = RepeatSheetViewController()
        repeatSheetViewController.modalPresentationStyle = .pageSheet
        self.navigationController.present(repeatSheetViewController, animated: true, completion: nil)
    }
    
    func presentCategorySheet() {
        let categoryListSheetViewController = CategoryListSheetViewController()
        let categoryListSheetViewModel = CategoryListSheetViewModel(coordinator: self, scheduleEditUseCase: scheduleEditUseCase)
        categoryListSheetViewController.viewModel = categoryListSheetViewModel
        categoryListSheetViewController.modalPresentationStyle = .overFullScreen
        self.navigationController.present(categoryListSheetViewController, animated: true, completion: nil)
    }
    
    func sendCategoryFromSheet(category: Category) {
        scheduleEditViewController.selectedCategory = category
    }
    
    func finish() {
        self.navigationController.dismiss(animated: true)
    }
}
