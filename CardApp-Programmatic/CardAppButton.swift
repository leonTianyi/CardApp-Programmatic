//
//  CardAppButton.swift
//  CardApp-Programmatic
//
//  Created by Tianyi Li on 7/8/23.
//

import UIKit

class CardAppButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
//        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(Color: UIColor, title: String, systemImageName: String) {
        super.init(frame: .zero)
        
        configuration = .tinted()
        configuration?.title = title
        configuration?.baseForegroundColor = Color
        configuration?.baseBackgroundColor = Color
        configuration?.cornerStyle = .medium
        configuration?.image = UIImage(systemName: systemImageName) //SF symbols
        configuration?.imagePadding = 5
        configuration?.imagePlacement = .leading
        
        translatesAutoresizingMaskIntoConstraints = false
        
    }
    
//    func configure() {
//        layer.cornerRadius = 8
//        titleLabel?.font = .systemFont(ofSize: 19, weight: .bold)
//        setTitleColor(.white, for: .normal)
//        translatesAutoresizingMaskIntoConstraints = false
//    }

}
