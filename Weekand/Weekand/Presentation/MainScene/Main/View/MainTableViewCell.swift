//
//  MainTableViewCell.swift
//  Weekand
//
//  Created by Daegeon Choi on 2022/05/30.
//

import UIKit
import SnapKit
import Then

class MainTableViewCell: UITableViewCell {
    
    // MARK: 상단 (카테고리 색상 원 + 일정 이름)
    lazy var nameLabel = WCategoryTitleLabel()
    
    // MARK: 하단 (아이콘 & 시작~종료 시간 + 이모지)
    lazy var timeLineLabel = WStatusTimeLabel()
    
    // TODO: Create & Add Emoji View
    lazy var emojiView = UIView().then {
        $0.backgroundColor = .darkGray
        $0.setContentHuggingPriority(.defaultLow, for: .horizontal)
        
        $0.snp.makeConstraints { $0.width.equalTo(64) }     // TODO: Temporary Data
    }
    
    lazy var bottomStack = UIStackView().then {
        $0.addArrangedSubview(timeLineLabel)
        $0.addArrangedSubview(emojiView)
        
        $0.axis = .horizontal
        $0.distribution = .fill
    }
    
    lazy var cellStack = UIStackView().then {
        
        $0.addArrangedSubview(nameLabel)
        $0.addArrangedSubview(bottomStack)
        
        $0.axis = .vertical
        $0.distribution = .fillEqually
        $0.spacing = 5.25
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        configureUI()
    }
    
    private func configureUI() {
        
        self.addSubview(cellStack)
        
        cellStack.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
    }
    
    public func configureCell(color: UIColor, title: String, status: StatusIcon, time: String) {
        
        self.nameLabel.editValue(color: color, title: title)
        self.timeLineLabel.editValue(status: status, title: time)
    }

}

// MARK: Touch Event
extension MainTableViewCell {
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
