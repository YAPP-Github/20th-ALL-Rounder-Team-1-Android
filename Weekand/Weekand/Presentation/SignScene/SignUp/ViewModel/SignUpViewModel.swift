//
//  SignUpViewModel.swift
//  Weekand
//
//  Created by Daegeon Choi on 2022/05/20.
//

import Foundation
import RxSwift
import RxCocoa

class SignUpViewModel: ViewModelType {

    weak var coordinator: SignUpCoordinator?
    private let disposeBag = DisposeBag()
    
    init(coordinator: SignUpCoordinator?) {
        self.coordinator = coordinator
    }
    
    struct Input {
        let emailTextFieldDidEditEvent: Observable<String>
        let emailButtonDidTapEvent: Observable<Void>
        let authNumberTextFieldDidEditEvent: Observable<String>
        let authNumberButtonDidTapEvent: Observable<Void>
        let nickNameTextFieldDidEditEvent: Observable<String>
        let nickNameButtonDidTapEvent: Observable<Void>
        let passwordTextFieldDidEditEvent: Observable<String>
        let passwordTextFieldDidEndEditEvent: Observable<Void>
        let passwordCheckTextFieldDidEditEvent: Observable<String>
        let passwordCheckTextFieldDidEndEditEvent: Observable<Void>
        let nextButtonDidTapEvent: Observable<Void>
        let closeButtonDidTapEvent: Observable<Void>
    }
    
    struct Output {
        var vaildEmail: Driver<Bool>
        var checkAuthenticationNumber: Driver<Bool>
        var checkNickName: Driver<Bool>
        var vaildPassword: Driver<Bool>
        var accordPassword: Driver<Bool>
        var nextButtonEnable: Driver<Bool>
    }
    
    func transform(input: Input) -> Output {
        let vaildEmail = input.emailTextFieldDidEditEvent.map(vaildEmail).asObservable()
        let vaildEmailWithTap = input.emailButtonDidTapEvent.withLatestFrom(vaildEmail)
        
        let checkAuthenticationNumber = input.authNumberTextFieldDidEditEvent.map(checkAuthenticationNumber).asObservable()
        let checkAuthenticationNumberWithTap = input.authNumberButtonDidTapEvent.withLatestFrom(checkAuthenticationNumber)
        
        let checkNickName = input.nickNameTextFieldDidEditEvent.map(checkNickName).asObservable()
        let checkNickNameWithTap = input.nickNameButtonDidTapEvent.withLatestFrom(checkNickName).asObservable()
        
        let vaildPassword = input.passwordTextFieldDidEditEvent.map(validPassword).asObservable()
        let vaildPasswordWithEndEdit = input.passwordTextFieldDidEndEditEvent.withLatestFrom(vaildPassword)
        
        let accordPassword = Observable.combineLatest(input.passwordTextFieldDidEditEvent, input.passwordCheckTextFieldDidEditEvent).map(accordPassword).asObservable()
        let accordPasswordWithEndEdit = input.passwordCheckTextFieldDidEndEditEvent.withLatestFrom(accordPassword)
        
        let nextButtonEnable = Observable.combineLatest(vaildEmail, checkAuthenticationNumber, checkNickName, checkNickNameWithTap, vaildPassword, accordPassword).map { $0 && $1 && $2 && $3 && $4 && $5 }
        
        input.nextButtonDidTapEvent.subscribe(onNext: {
            self.coordinator?.pushAddInformationViewController()
        }, onError: { _ in
            
        }).disposed(by: disposeBag)
        
        input.closeButtonDidTapEvent.subscribe(onNext: {
            self.coordinator?.finish()
        }).disposed(by: disposeBag)
        
        return Output(
            vaildEmail: vaildEmailWithTap.asDriver(onErrorJustReturn: false),
            checkAuthenticationNumber: checkAuthenticationNumberWithTap.asDriver(onErrorJustReturn: false),
            checkNickName: checkNickNameWithTap.asDriver(onErrorJustReturn: false),
            vaildPassword: vaildPasswordWithEndEdit.asDriver(onErrorJustReturn: false),
            accordPassword: accordPasswordWithEndEdit.asDriver(onErrorJustReturn: false),
            nextButtonEnable: nextButtonEnable.asDriver(onErrorJustReturn: false)
        )
    }
    
    private func vaildEmail(email: String) -> Bool {
        guard let regex = try? NSRegularExpression(
            pattern: "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}",
            options: [.caseInsensitive]
        )
        else {
            assertionFailure("Regex not valid")
            return false
        }
        
        let regexFirstMatch = regex
            .firstMatch(
                in: email,
                options: [],
                range: NSRange(location: 0, length: email.count)
            )
        
        return regexFirstMatch != nil
    }
    
    private func checkAuthenticationNumber(_ authNumber: String) -> Bool {
        if authNumber == "1234" {
            return true
        }
        return false
    }
    
    private func checkNickName(_ nickName: String) -> Bool {
        if nickName == "test" {
            return true
        }
        return false
    }
    
    private func validPassword(_ password: String) -> Bool {
        let passwordRegex = "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z!@#$%^&*()\\-_=+{}|?>.<,:;~`’]{8,}$"
        return NSPredicate(format: "SELF MATCHES %@", passwordRegex).evaluate(with: password)
    }
    
    private func accordPassword(password: String, passwordforCheck: String) -> Bool {
        return password == passwordforCheck
    }
}
