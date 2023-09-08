//
//  FeedViewController.swift
//  NavigationHW
//
//  Created by Дима Печенин on 08.09.2023.
//

import UIKit

class FeedViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        // Создание кнопки для перехода к PostViewController.
        let postButton = UIButton(type: .system)
        postButton.setTitle("Показать пост", for: .normal)
        
        // Установка размера и позиции кнопки на экране.
        postButton.frame = CGRect(x: 20, y: 100, width: view.frame.width - 40, height: 40)
        
        // Назначение метода showPost() для обработки нажатия на кнопку.
        postButton.addTarget(self, action: #selector(showPost), for: .touchUpInside)
        
        // Добавление кнопки на главную view контроллера.
        view.addSubview(postButton)
        
    }
    
    @objc func showPost() {
        // Создаем объект типа Post
        let post = Post(title: "Заголовок Поста", content: "Текст поста для примера отображения")
        
        // Создаем экземпляр PostViewController и передаем объект Post
        let postViewController = PostViewController(post: post)
        
        // Переходим к PostViewController в стеке UINavigationController
        navigationController?.pushViewController(postViewController, animated: true)
    }
}


