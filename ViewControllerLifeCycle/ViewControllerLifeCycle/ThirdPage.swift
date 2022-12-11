//
//  ThirdPage.swift
//  ViewControllerLifeCycle
//
//  Created by Oleg Kalistratov on 11.12.22.
//

import UIKit

class ThirdPage: UIViewController {
    
    // Инициализация проходит до загрузки вью
    var someProperties: String? {
        didSet{
            print("someProperties ThirdPage")
        }
    }
    
    @IBOutlet weak var closeButton: UIButton! {
        didSet{
            print("closeButton ThirdPage")
        }
    }
    
    let dismissButton: UIButton = {
       let button = UIButton()
        button.setTitle("Dismiss", for: .normal)
        button.backgroundColor = .systemGray
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    // Срабатывает до начала загрузки view, как только поступает команда открытия экрана
    override class func awakeFromNib() {
        print("\(#function) ThirdPage")
        
        // Вызывается для всех элементов, которые появляются из Storyboard и Xib(Nib) файлов,
        // происходит до того как будут установлены все оутлеты, не стоит использовать здесь оутлеты
    }
    
    
    // Используется при ручной инициализации вью
    override func loadView() {
        super.loadView()
        print("\(#function) ThirdPage")
        // Инициализация вью
    }
    
    // Срабатывает после загрузки view
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(#function) ThirdPage")
        self.view.backgroundColor = .red
        setConstraints()
        navigation()
        // Инициализация переменных и объектов
        // Вызывается один раз
    }
    
    private func setConstraints() {
        view.addSubview(dismissButton)
        dismissButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        dismissButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        dismissButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        dismissButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
     
    }
    
    private func navigation(){
        dismissButton.addTarget(self, action: #selector(showPreviousScreen), for: .touchUpInside)
    }
    
    @objc func showPreviousScreen(){
        self.navigationController?.popViewController(animated: true)
        
    }
    
    // Срабатывает перед появлением view на экране
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("\(#function) ThirdPage")
        
        // Для более тонкой настройки View,
        // которое нужно сделать без анимации
    }
    
    // Срабатывает перед тем, как размер вью изменился под размер экрана
    override func viewWillLayoutSubviews() {
        print("\(#function) ThirdPage")
        
        // Изменение размеров Subviews и их положение если не используем Autolayout
    }
    
    // Тут срабатывает Autolayout
    
    // Срабатывает после того, как размер вью изменился под размер экрана
    override func viewDidLayoutSubviews() {
        print("\(#function) ThirdPage")
        
        // Сохранение последнего состояния объекта
    }
    
    override func updateViewConstraints() {
        
        // Изменение значений констант констрейнтов
        super.updateViewConstraints() // super обязательно вызывать в конце
    }
    
    // View появился
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("\(#function) ThirdPage")
        
        // Вызывается, когда представление уже загружено,
        // и вы хотите что-то показать.
        
        // Может быть вызван не один раз и поэтому здесь нельзя хранить свойства
        // и методы так как может быть утечка памяти. здесь лучше использовать ресурсоъемкоие операции
        // например получение данных с оповещением пользователя.
    }
    
    // Срабатывает при повороте экрана
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        print("\(#function) ThirdPage")
        
        // Для обработки анимации при повороте экрана
    }
    
    // Cрабытывает при нехватки памяти
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("\(#function) ThirdPage")
        // Обнуление не используемых объектов
    }
    
    // Срабатывает перед тем, как вью закроется
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("\(#function) ThirdPage")
        
        // Сброс значений и параметров, отключение анимации
    }
    
    // Срабатывает посел закрытия вью
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("\(#function) ThirdPage")
        
        // Сброс значений и параметров
    }
    
    
    // Выгружает объект из памяти
    deinit {
        print("\(#function) ThirdPage")
    }
    
}

