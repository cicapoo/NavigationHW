//
//  PostViewController.swift
//  NavigationHW
//
//  Created by Дима Печенин on 08.09.2023.
//

import UIKit

class PostViewController: UIViewController {
    
    var post: Post?
    
    init(post: Post) {
        super.init(nibName: nil, bundle: nil)
        self.post = post
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Устанвливаем цвет главной view
        view.backgroundColor = .white
        
        // Устанавливаем заголовок PostViewController с использованием title из объекта Post
        if let postTitle = post?.title {
            title = postTitle
        }
        
        
        let contentLabel = UILabel()
        contentLabel.text = post?.content
        contentLabel.textAlignment = .left
        contentLabel.numberOfLines = 0
        contentLabel.frame = CGRect(x: 20, y: 150, width: view.frame.width - 40, height: 200)
        view.addSubview(contentLabel)
        
        
        // Добавляем Bar Button Item "Инфо" в навигейшн бар
        let infoButton = UIBarButtonItem(
            title: "Инфо",
            style: .plain,
            target: self,
            action: #selector(showInfoViewController)
        )
        navigationItem.rightBarButtonItem = infoButton
    }
    
    // Метод для отображения InfoViewController модально
    @objc func showInfoViewController() {
        let infoViewController = InfoViewController()
        let navController = UINavigationController(rootViewController: infoViewController)
        present(navController, animated: true, completion: nil)
    }
}
