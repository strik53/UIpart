//
//  PostViewController.swift
//  Navigation
//
//  Created by R2-D2 on 18.03.2023.
//

import UIKit

class PostViewController: UIViewController {
    

    var titlePost : String = "titlePost of Post"
    
   
    
    //action button
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray2
        
         
           self.navigationItem.title = titlePost
        
    
      //BarButton 8

        let newBarButton = UIBarButtonItem(barButtonSystemItem: .bookmarks, target: self, action: #selector(barButtonPressed(_:)))
        navigationItem.rightBarButtonItem = newBarButton
        
    }
    
    @objc func barButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true)


        let infoViewController = InfoViewController()
     
        infoViewController.modalPresentationStyle = .pageSheet
        present(infoViewController, animated:  true )
    }
    
    
    @objc func buttonPressed(_ sender: UIButton) {
  dismiss(animated: true)
     
    }
 
    
}


