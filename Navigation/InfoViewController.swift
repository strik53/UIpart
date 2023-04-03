//
//  InfoViewController.swift
//  Navigation
//
//  Created by R2-D2 on 24.03.2023.
//

import UIKit

class InfoViewController: UIViewController {
    
   
    
    // На InfoViewController создайте кнопку. При нажатии на неё должен показаться UIAlertController с заданным title, message и двумя UIAlertAction. При нажатии на UIAlertAction в консоль должно выводиться сообщение.
    

    
    
    
             
        override func viewDidLoad() {
            super.viewDidLoad()

            view.backgroundColor = .systemGray3
            
            createAlertButton()
        }
        
        private func createAlertButton() {
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setTitle("Alert", for: .normal)
            button.backgroundColor = .systemYellow
            button.setTitleColor(.black, for: .normal)
            button.addTarget(self, action: #selector(tapAlertButton), for: .touchUpInside)
            
            button.layer.cornerRadius = 8
           
                    
            view.addSubview(button)
            
            NSLayoutConstraint.activate([
                button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
                button.heightAnchor.constraint(equalToConstant: 50),
                button.widthAnchor.constraint(equalToConstant: 100)
            ])
        }
        
        @objc func tapAlertButton() {
            let alert = UIAlertController(title: "!!WARNING!!",
                                          message: "Choose Left or Right?",
                                          preferredStyle: .alert)
            // add two buttons
            let fine = UIAlertAction(title: "Left", style: .default) { _ in
                print("Left")
            }
            alert.addAction(fine)
            
            let so = UIAlertAction(title: "Right", style: .destructive) { _ in
                print("Right")
            }
            alert.addAction(so)

            self.present(alert, animated: true, completion: nil)
        }
        
       
    }
    
    
    
    
    
    
        
        
        
