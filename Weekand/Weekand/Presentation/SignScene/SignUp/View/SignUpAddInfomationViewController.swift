//
//  AddInformationViewController.swift
//  Weekand
//
//  Created by 이호영 on 2022/05/25.
//

import UIKit
import SwiftUI
import RxSwift
import RxCocoa

class SignUpAddInfomationViewController: BaseViewController {

    private let disposeBag = DisposeBag()
    var viewModel: SignUpAddInfomationViewModel?
    
    lazy var welcomeLabel = WTitleLabel().then {
        $0.setText(string: "조금 더 알려주시겠어요?")
    }
    
    lazy var jobStackView = InformationGroupStackView().then {
        $0.setNameLabelText(string: "직업")
        $0.setInformlabelText(string: "최대 3개까지 선택할 수 있어요")
    }
    
    lazy var interestsStackView = InformationGroupStackView().then {
        $0.setNameLabelText(string: "관심사")
        $0.setInformlabelText(string: "최대 3개까지 선택할 수 있어요")
    }
    
    lazy var confirmButton = WBottmButton().then {
        $0.setTitle("다음", for: .normal)
        $0.enable(string: "다음")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        navigationItem.title = "추가 정보"
        stackView.spacing = 30
        configureUI()
        bindViewModel()
    }

    func configureUI() {
        [welcomeLabel, jobStackView, interestsStackView].forEach { stackView.addArrangedSubview($0) }
        stackView.snp.makeConstraints { make in
            // top 임시값 세팅
            make.top.equalToSuperview().offset(30)
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
    
    func bindViewModel() {
        guard let viewModel = self.viewModel else {
            return
        }
        
        let input = SignUpAddInfomationViewModel.Input(
            nextButtonDidTapEvent: confirmButton.rx.tap.asObservable()
        )
        
        let _ = viewModel.transform(input: input)
    }
}

#if canImport(SwiftUI) && DEBUG

struct AddInformationViewControllerPreview: PreviewProvider {
    static var previews: some View {
        Group {
            SignUpAddInfomationViewController().showPreview(.iPhone8)
        }
    }
}
#endif
