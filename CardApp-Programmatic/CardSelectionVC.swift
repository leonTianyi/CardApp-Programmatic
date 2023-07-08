//
//  CardSelectionVC.swift
//  CardApp-Programmatic
//
//  Created by Tianyi Li on 7/8/23.
//

import UIKit

class CardSelectionVC: UIViewController {
    
    let cardImageView = UIImageView()
    //Initialize the buttons
    let stopButton = CardAppButton(backgroundColor: .systemRed, title: "Stop!")
    let resetButton = CardAppButton(backgroundColor: .init(red: 89/255, green: 133/255, blue: 53/255, alpha: 1), title: "Reset")
    let rulesButton = CardAppButton(backgroundColor: .systemBlue, title: "Rules")
    
    var cards: [UIImage] = CardDeck.allValues
    var timer: Timer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        configureUI()
        startTimer()
        
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomCard), userInfo: nil, repeats: true)
    }
    
    @objc func showRandomCard() {
        cardImageView.image = cards.randomElement()
    }
    
    @objc func stopTimer() {
        timer.invalidate()
    }
    
    @objc func resetTimer() {
        stopTimer()
        startTimer()
    }
    
    func configureUI() {
        configureCardImageView()
        configureStopButton()
        configureResetButton()
        configureRulesButton()
    }
    
    func configureCardImageView() {
        view.addSubview(cardImageView) //similar to searching for Image view and dragging it onto the storyboard
        cardImageView.translatesAutoresizingMaskIntoConstraints = false //i.e use auto layout
        cardImageView.image = UIImage(named: "AS")
        
        //Like the ty fighter
        NSLayoutConstraint.activate([
            cardImageView.widthAnchor.constraint(equalToConstant: 250),
            cardImageView.heightAnchor.constraint(equalToConstant: 350),
            cardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cardImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -75)
        ])
    }
    
    func configureStopButton() {
        view.addSubview(stopButton)
        stopButton.addTarget(self, action: #selector(stopTimer), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            stopButton.widthAnchor.constraint(equalToConstant: 260),
            stopButton.heightAnchor.constraint(equalToConstant: 50),
            stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stopButton.topAnchor.constraint(equalTo: cardImageView.bottomAnchor, constant: 30)
        ])
    }
    
    func configureResetButton() {
        view.addSubview(resetButton)
        resetButton.addTarget(self, action: #selector(resetTimer), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            resetButton.widthAnchor.constraint(equalToConstant: 115),
            resetButton.heightAnchor.constraint(equalToConstant: 50),
            resetButton.leadingAnchor.constraint(equalTo: stopButton.leadingAnchor),
            resetButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20)
        ])
    }
    
    func configureRulesButton() {
        view.addSubview(rulesButton)
        
        NSLayoutConstraint.activate([
            rulesButton.widthAnchor.constraint(equalToConstant: 115),
            rulesButton.heightAnchor.constraint(equalToConstant: 50),
            rulesButton.trailingAnchor.constraint(equalTo: stopButton.trailingAnchor),
            rulesButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20)
        ])
        
        // Add action when button is tapped
        rulesButton.addTarget(self, action: #selector(presentRulesVC), for: .touchUpInside)
        
    }
    
    @objc func presentRulesVC() {
        let rulesVC = RulesVC()
        present(rulesVC, animated: true)
    }
}
