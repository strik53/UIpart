//
//  FeedViewController.swift
//  Navigation
//
//  Created by R2-D2 on 18.03.2023.
//

import UIKit

class FeedViewController: UIViewController {
    
    var post = Post(title: "Feed/postViewController" )
    
    //UIButton
    
    
   var actionButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Go to post", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        button.backgroundColor = .yellow
       
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
            //subviewButton
        view.addSubview(actionButton)
        actionButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -400).isActive = true
        actionButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        actionButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        actionButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        actionButton.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
        
    }
    
    @objc func buttonPressed(_ sender: UIButton) {
        let postViewController = PostViewController()
        
        postViewController.modalTransitionStyle = .flipHorizontal
        postViewController.modalPresentationStyle = .pageSheet
        postViewController.titlePost = post.title
        
   //     present(postViewController, animated:  true)
        self.navigationController?.pushViewController(postViewController, animated: true)
       
        
    }
}
