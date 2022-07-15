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
        $0.setColor(UIColor(hex: selectedColor.hexCode) ?? .red)
    }
    
    lazy var confirmButton = WBottmButton().then {
        $0.setTitle("완료", for: .normal)
        $0.disable(string: "완료")
    }
    
    lazy var closeButton = UIBarButtonItem().then {
        $0.image = UIImage(named: "close")
        $0.tintColor = .gray400
    }
    
    var selectedCategory: Category? {
        didSet {
            self.categoryTextFieldStackView.textField.text = selectedCategory?.name
            self.selectedOpenType = selectedCategory?.openType ?? .closed
            let color = Constants.colors.flatMap { $0 }.filter { $0.hexCode == selectedCategory?.color }
            self.selectedColor = color.first ?? Constants.colors[0][0]
        }
    }
    var selectedOpenType: CategoryOpenType = .allOpen {
        didSet {
            self.openTypeObservable.onNext(selectedOpenType)
        }
    }
    var selectedColor: Color = Constants.colors[0][0] {
        didSet {
            self.colorStackView.colorView.backgroundColor = UIColor(hex: selectedColor.hexCode)
            self.colorObservable.onNext(selectedColor)
        }
    }
    lazy var openTypeObservable = BehaviorSubject(value: selectedOpenType)
    lazy var colorObservable = BehaviorSubject(value: selectedColor)
    
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
        let addInput = CategoryAddViewModel.Input(
            closeButtonDidTapEvent: closeButton.rx.tap.asObservable(),
            colorButtonDidTapEvent: colorStackView.colorView.rx.tap.asObservable(),
            categoryNameTextFieldDidEditEvent: categoryTextFieldStackView.textField.rx.text.orEmpty.asObservable(),
            confirmButtonDidTapEvent: confirmButton.rx.tap.asObservable(),
            selectedOpenType: openTypeObservable,
            selectedColor: colorObservable
        )
        
        let modifyInput = CategoryModifyViewModel.Input(
            closeButtonDidTapEvent: closeButton.rx.tap.asObservable(),
            colorButtonDidTapEvent: colorStackView.colorView.rx.tap.asObservable(),
            categoryNameTextFieldDidEditEvent: categoryTextFieldStackView.textField.rx.text.orEmpty.asObservable(),
            confirmButtonDidTapEvent: confirmButton.rx.tap.asObservable(),
            selectedOpenType: openTypeObservable,
            selectedColor: colorObservable,
            selectedCategory: selectedCategory 
        )
        
        openTypeStackView.allOpenButton.rx.tap.subscribe { _ in
            if self.openTypeStackView.allOpenButton.isChecked == false {
                self.openTypeStackView.allOpenButton.isChecked = true
                self.openTypeStackView.followerOpenButton.isChecked = false
                self.openTypeStackView.closedButton.isChecked = false
                self.selectedOpenType = .allOpen
            }
        }.disposed(by: disposeBag)
        
        openTypeStackView.followerOpenButton.rx.tap.subscribe { _ in
            if self.openTypeStackView.followerOpenButton.isChecked == false {
                self.openTypeStackView.allOpenButton.isChecked = false
                self.openTypeStackView.followerOpenButton.isChecked = true
                self.openTypeStackView.closedButton.isChecked = false
                self.selectedOpenType = .followerOpen
            }
        }.disposed(by: disposeBag)
        
        openTypeStackView.closedButton.rx.tap.subscribe { _ in
            if self.openTypeStackView.closedButton.isChecked == false {
                self.openTypeStackView.allOpenButton.isChecked = false
                self.openTypeStackView.followerOpenButton.isChecked = false
                self.openTypeStackView.closedButton.isChecked = true
                self.selectedOpenType = .closed
            }
        }.disposed(by: disposeBag)
        
        if ((viewModel as? CategoryAddViewModel) != nil) {
            let output = viewModel?.transform(input: addInput as! T.Input)
        } else {
            let output = viewModel?.transform(input: modifyInput as! T.Input)
        }
        
        categoryTextFieldStackView.textField.rx.text.orEmpty
            .map(checkEmptyValue)
            .subscribe(onNext: { [weak self] isVaild in
                if isVaild {
                    self?.confirmButton.enable(string: "완료")
                } else {
                    self?.confirmButton.disable(string: "완료")
                }
            }).disposed(by: disposeBag)
    }
    
    private func checkEmptyValue(text: String) -> Bool {
        return text.trimmingCharacters(in: [" "]) != ""
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
