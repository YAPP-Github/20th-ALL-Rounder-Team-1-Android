//
//  MainCoordinator.swift
//  Weekand
//
//  Created by Daegeon Choi on 2022/06/04.
//

import UIKit

class MainCoordinator: Coordinator {
    
    weak var finishDelegate: CoordinatorDidFinishDelegate?
    var navigationController: UINavigationController
    var childCoordinators: [Coordinator] = []
    var type: CoordinatorType = .main
    var mainViewController: MainViewController
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.mainViewController = MainViewController()
    }
    
    func start() {
        self.mainViewController.viewModel = MainViewModel(coordinator: self)
        self.navigationController.pushViewController(mainViewController, animated: true)
    }
    
    func finish() {
        self.finishDelegate?.childDidFinish(self)
    }
    
    func showCategoryScene() {
        let categoryCoordinator = CategoryCoordinator(navigationController: self.navigationController)
        categoryCoordinator.finishDelegate = self
        childCoordinators.append(categoryCoordinator)
        categoryCoordinator.start()
    }
    
    func pushAlarmViewController() {
        let alarmViewController = AlarmViewController()
        alarmViewController.viewModel = AlarmViewModel()
        self.navigationController.pushViewController(alarmViewController, animated: true)
    }
    
    /// 월간 달력으로 날짜 선택 Sheet
    func pushMonthlyCalendarSheet() {
        let monthlyCalendarViewController = MonthlyCalendarSheetViewController()
        self.navigationController.present(monthlyCalendarViewController, animated: true, completion: nil)
    }
    
    /// 받은 스티커 현황 Sheet
    func pushEmojiSheet() {
        let emojiViewController = EmojiSheetViewController()
        self.navigationController.present(emojiViewController, animated: true, completion: nil)
    }
    
    /// 스티커 추가 Sheet
    func pushStickerAddSheet() {
        let stickerAddViewController = StickerAddSheetViewController()
        self.navigationController.present(stickerAddViewController, animated: true, completion: nil)
    }
    


        
    // TODO: 검색 화면 구현 후 개발
    func showSearchScene() {
        print(#function)
    }
}

extension MainCoordinator: CoordinatorDidFinishDelegate {
    
    func childDidFinish(_ child: Coordinator) {
        self.childCoordinators = self.childCoordinators.filter({ $0.type != child.type })
        navigationController.popToRootViewController(animated: true)
    }
}
