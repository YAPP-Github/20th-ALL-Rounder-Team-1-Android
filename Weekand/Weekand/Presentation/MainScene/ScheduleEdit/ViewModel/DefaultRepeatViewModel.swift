//
//  RepeatViewModel.swift
//  Weekand
//
//  Created by 이호영 on 2022/07/22.
//

import Foundation
import RxSwift
import RxRelay
import RxCocoa

class DefaultRepeatViewModel: ViewModelType {
    
    weak var coordinator: ScheduleEditCoordinator?
    private var disposeBag = DisposeBag()
    
    var repeatType: ScheduleRepeatType?
    
    init(coordinator: ScheduleEditCoordinator, repeatType: ScheduleRepeatType) {
        self.coordinator = coordinator
        self.repeatType = repeatType
    }

}

// MARK: Bind UI
extension DefaultRepeatViewModel {
    
    struct Input {
        let cancelButtonDidTapEvent: Observable<Void>
        let confirmButtonDidTapEvent: Observable<Void>
    }
    
    struct Output { }
    
    @discardableResult
    func transform(input: Input) -> Output {
        input.cancelButtonDidTapEvent.subscribe(onNext: {
            self.coordinator?.finish()
        })
        .disposed(by: disposeBag)
        
        input.confirmButtonDidTapEvent.subscribe(onNext: {
            switch self.repeatType {
            case .daily:
                print("daily")
            case .monthly:
                print("monthly")
            case .yearly:
                print("yearly")
            case .weekly:
                break
            case .once:
                break
            case .none:
                break
            }
            self.coordinator?.finish()
        })
        .disposed(by: disposeBag)
        
        return Output()
    }
}
