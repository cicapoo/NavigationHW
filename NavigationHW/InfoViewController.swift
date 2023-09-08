//
//  InfoViewController.swift
//  NavigationHW
//
//  Created by Дима Печенин on 08.09.2023.
//

import UIKit

class InfoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Установливаем цвета View
        view.backgroundColor = .white
        
        // Создаем кнопку для отображения UIAlertController
        let showAlertButton = UIButton(type: .system)
        showAlertButton.setTitle("Показать Alert", for: .normal)
        showAlertButton.frame = CGRect(x: 20, y: 100, width: view.frame.width - 40, height: 40)
        showAlertButton.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        view.addSubview(showAlertButton)
    }
    
    // Метод для отображения UIAlertController
    @objc func showAlert() {
        
        // Создаем UIAlertController с заданным title и message
        let alertController = UIAlertController(
            title: "Заголовок Alert",
            message: "Сообщение Alert",
            preferredStyle: .alert
        )
        
        // Создаем два действия UIAlertAction
        let action1 = UIAlertAction(
            title: "Действие 1",
            style: .default
        )
        
        let action2 = UIAlertAction(
            title: "Действие 2",
            style: .destructive
        )
        
        // Добавляем действия к UIAlertController
        alertController.addAction(action1)
        alertController.addAction(action2)
        
        // Отображаем UIAlertController
        present(alertController, animated: true, completion: nil)
    }
}
