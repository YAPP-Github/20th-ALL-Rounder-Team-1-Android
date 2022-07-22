//
//  ProfileEditFieldStack.swift
//  Weekand
//
//  Created by Daegeon Choi on 2022/07/22.
//

import UIKit
import SnapKit
import Then

class ProfileEditFieldView: UIView {
    
    var maxLength: Int?
    
    lazy var titleLabel = UILabel().then {
        $0.font = WFont.body2()
        $0.textColor = .gray800
        $0.textAlignment = .left
    }
    
    lazy var validationLabel = UILabel().then {
        $0.font = WFont.body2()
        $0.textColor = .gray500
        $0.textAlignment = .right
    }
    
    lazy var labelStack = UIStackView().then {
        $0.axis = .horizontal
        $0.spacing = 0
        $0.distribution = .fill
    }
    
    lazy var textField = WTextField()
    
    init(title: String, validation: Int?) {
        super.init(frame: .zero)
        
        setUpView()
        configureUI()
        
        titleLabel.text = title
        if validation == nil {
            validationLabel.isHidden = true
            textField.allowsEditingTextAttributes = false
            textField.tintColor = .clear
        } else {
            maxLength = validation
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpView() {
        textField.delegate = self
        textField.placeholder = ""
    }
    
    private func configureUI() {
        
        [titleLabel, validationLabel].forEach { labelStack.addArrangedSubview($0) }
        
        [labelStack, textField].forEach { self.addSubview($0) }
        labelStack.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.right.equalToSuperview()
        }
        textField.snp.makeConstraints { make in
            make.top.equalTo(labelStack.snp.bottom).offset(6)
            make.left.right.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        
    }
}

extension ProfileEditFieldView: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        guard let text = textField.text else { return false }
        
        guard let limit = maxLength else { return false }
        
        validationLabel.text = "\(text.count)/\(limit)자"
                
        if text.count >= limit {
            return false
        }
                
        return true
    }
}
