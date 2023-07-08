//
//  RulesVC.swift
//  CardApp-Programmatic
//
//  Created by Tianyi Li on 7/8/23.
//

import UIKit

class RulesVC: UIViewController {
    
    let titleLabel = UILabel()
    let rulesLabel = UILabel()
    let exerciseLabel = UILabel()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureTitleLabel()
        configureRulesLabel()
        configureExerciseLabel()
    }
    
    func configureTitleLabel() {
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "RULES"
        titleLabel.font = .systemFont(ofSize: 40, weight: .bold)
        titleLabel.textAlignment = .center
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }
    
    func configureRulesLabel() {
        view.addSubview(rulesLabel)
        rulesLabel.translatesAutoresizingMaskIntoConstraints = false
        rulesLabel.text = "The value of each card represents the number of exercise you do. \n\nJ = 11, Q = 12, K = 13, A = 14"
        rulesLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        rulesLabel.textAlignment = .center
        rulesLabel.lineBreakMode = .byWordWrapping
        rulesLabel.numberOfLines = 0 //adapt
        
        NSLayoutConstraint.activate([
            rulesLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25),
            rulesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            rulesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }
    
    func configureExerciseLabel() {
        view.addSubview(exerciseLabel)
        exerciseLabel.translatesAutoresizingMaskIntoConstraints = false
        exerciseLabel.text = "♠️ = Push up\n\n❤️ = Sit-ups\n\n♣️= Lat Raises\n\n♦️= Rest (# x 2)"
        exerciseLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        exerciseLabel.textAlignment = .left
        exerciseLabel.numberOfLines = 0 //adapt
        
        NSLayoutConstraint.activate([
            exerciseLabel.topAnchor.constraint(equalTo: rulesLabel.bottomAnchor, constant: 50),
            exerciseLabel.widthAnchor.constraint(equalToConstant: 200),
            exerciseLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
}
