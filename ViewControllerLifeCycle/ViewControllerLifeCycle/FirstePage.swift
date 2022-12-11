//
//  FirstePage.swift
//  ViewControllerLifeCycle
//
//  Created by Oleg Kalistratov on 11.12.22.
//

import UIKit

class FirstePage: UIViewController {
    
    // Инициализация проходит до загрузки вью
    var someProperties: String? {
        didSet{
            print("someProperties FirstePage")
        }
    }
    
    @IBOutlet weak var closeButton: UIButton! {
        didSet{
            print("closeButton FirstePage")
        }
    }
    
    
    // Срабатывает до начала загрузки view, как только поступает команда открытия экрана
    override class func awakeFromNib() {
        print("\(#function) FirstePage")
        
        // Вызывается для всех элементов, которые появляются из Storyboard и Xib(Nib) файлов,
        // происходит до того как будут установлены все оутлеты, не стоит использовать здесь оутлеты
    }
    
    
    // Используется при ручной инициализации вью
    override func loadView() {
        super.loadView()
        print("\(#function) FirstePage")
        // Инициализация вью
    }
    
    // Срабатывает после загрузки view
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(#function) FirstePage")
        self.view.backgroundColor = .lightGray
        
        // Инициализация переменных и объектов
        // Вызывается один раз
    }
    
    // Срабатывает перед появлением view на экране
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("\(#function) FirstePage")
        
        // Для более тонкой настройки View,
        // которое нужно сделать без анимации
    } 
    
    // Срабатывает перед тем, как размер вью изменился под размер экрана
    override func viewWillLayoutSubviews() {
        print("\(#function) FirstePage")
        
        // Изменение размеров Subviews и их положение если не используем Autolayout
    }
    
    // Тут срабатывает Autolayout
    
    // Срабатывает после того, как размер вью изменился под размер экрана
    override func viewDidLayoutSubviews() {
        print("\(#function) FirstePage")
        
        // Сохранение последнего состояния объекта
    }
    
    override func updateViewConstraints() {
        
        // Изменение значений констант констрейнтов
        super.updateViewConstraints() // super обязательно вызывать в конце
    }
    
    // View появился
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("\(#function) FirstePage")
        
        // Вызывается, когда представление уже загружено,
        // и вы хотите что-то показать.
        
        // Может быть вызван не один раз и поэтому здесь нельзя хранить свойства
        // и методы так как может быть утечка памяти. здесь лучше использовать ресурсоъемкоие операции
        // например получение данных с оповещением пользователя.
    }
    
    // Срабатывает при повороте экрана
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        print("\(#function) FirstePage")
        
        // Для обработки анимации при повороте экрана
    }
    
    // Cрабытывает при нехватки памяти
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("\(#function) FirstePage")
        // Обнуление не используемых объектов
    }
    
    // Срабатывает перед тем, как вью закроется
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("\(#function) FirstePage")
        
        // Сброс значений и параметров, отключение анимации
    }
    
    // Срабатывает посел закрытия вью
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("\(#function) FirstePage")
        
        // Сброс значений и параметров
    }
    
    
    // Выгружает объект из памяти
    deinit {
        print("\(#function) FirstePage")
    }
    
}

