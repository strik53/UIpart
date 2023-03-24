//
//  PostViewController.swift
//  Navigation
//
//  Created by R2-D2 on 18.03.2023.
//

import UIKit

class PostViewController: UIViewController {

    
    private lazy var actionButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Вернуться", for: .normal)
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        
        view.backgroundColor = .systemCyan
        title = "POST"
        view.addSubview(actionButton)
        
        
        let safeAreaLayoutGuide = view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            actionButton.leadingAnchor.constraint(
                equalTo: safeAreaLayoutGuide.leadingAnchor,
                constant: 20.0
            ),
            actionButton.trailingAnchor.constraint(
                equalTo: safeAreaLayoutGuide.trailingAnchor,
                constant: -20.0
            ),
            actionButton.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor),
            actionButton.heightAnchor.constraint(equalToConstant: 44.0)
        ])
        
        actionButton.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
    }
    
    @objc func buttonPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    
        
    }

   