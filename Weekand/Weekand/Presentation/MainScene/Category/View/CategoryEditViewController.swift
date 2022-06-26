//
//  CategoryEditViewController.swift
//  Weekand
//
//  Created by 이호영 on 2022/06/11.
//

import UIKit
import Then
import RxSwift

class CategoryEditViewController<T: CategoryEditViewModelType>: BaseViewController {
    
    private let disposeBag = DisposeBag()
    var viewModel: T?

    let categoryTextFieldStackView = WTextFieldStackView(fieldPlaceholder: "카테고리명", nameText: "카테고리")
    let openTypeStackView = OpenTypeStackView(nameText: "공개")
    
    lazy var colorStackView = ColorStackView(nameText: "색상").then {
        $0.setColor(.wred)
    }
    
    lazy var confirmButton = WBottmButton().then {
        $0.setTitle("다음", for: .normal)
        $0.disable(string: "다음")
    }
    
    lazy var closeButton = UIBarButtonItem().then {
        $0.image = UIImage(named: "close")
        $0.tintColor = .gray400
    }
    
    let selectedOpenType: BehaviorSubject<String> = BehaviorSubject(value: "allOpen")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        configureUI()
        bindViewModel()
    }
    
    private func setupView() {
        view.backgroundColor = .white
        navigationItem.leftBarButtonItem = closeButton
        stackView.spacing = 25
    }

    private func configureUI() {
        [categoryTextFieldStackView, openTypeStackView, colorStackView].forEach { stackView.addArrangedSubview($0) }
        stackView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(25)
            make.bottom.equalToSuperview().offset(-WBottmButton.buttonOffset - 64)
            make.trailing.leading.equalToSuperview().inset(20)
        }
        
        view.addSubview(confirmButton)
        confirmButton.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).offset(-WBottmButton.buttonOffset)
            make.bottom.equalToSuperview()
            make.centerX.equalToSuperview()
            make.width.equalTo(view)
        }
    }
    
    private func bindViewModel() {
        let input = CategoryAddViewModel.Input(
            closeButtonDidTapEvent: closeButton.rx.tap.asObservable(),
            colorButtonDidTapEvent: colorStackView.colorView.rx.tap.asObservable(),
            selectedOpenType: selectedOpenType
        )
        
        openTypeStackView.allOpenButton.rx.tap.subscribe { _ in
            if self.openTypeStackView.allOpenButton.isChecked == false {
                self.openTypeStackView.allOpenButton.isChecked = true
                self.openTypeStackView.followerOpenButton.isChecked = false
                self.openTypeStackView.closedButton.isChecked = false
                self.selectedOpenType.onNext("allOpen")
            }
        }.disposed(by: disposeBag)
        
        openTypeStackView.followerOpenButton.rx.tap.subscribe { _ in
            if self.openTypeStackView.followerOpenButton.isChecked == false {
                self.openTypeStackView.allOpenButton.isChecked = false
                self.openTypeStackView.followerOpenButton.isChecked = true
                self.openTypeStackView.closedButton.isChecked = false
                self.selectedOpenType.onNext("followerOpen")
            }
        }.disposed(by: disposeBag)
        
        openTypeStackView.closedButton.rx.tap.subscribe { _ in
            if self.openTypeStackView.closedButton.isChecked == false {
                self.openTypeStackView.allOpenButton.isChecked = false
                self.openTypeStackView.followerOpenButton.isChecked = false
                self.openTypeStackView.closedButton.isChecked = true
                self.selectedOpenType.onNext("closed")
            }
        }.disposed(by: disposeBag)
        
        let output = viewModel?.transform(input: input as! T.Input)
    }

}

import SwiftUI
#if canImport(SwiftUI) && DEBUG

struct CategoryEditViewControllerPreview: PreviewProvider {
    static var previews: some View {
        Group {
        }
    }
}
#endif
