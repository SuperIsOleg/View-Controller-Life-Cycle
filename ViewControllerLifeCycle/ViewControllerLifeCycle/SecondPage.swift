//
//  SecondPage.swift
//  ViewControllerLifeCycle
//
//  Created by Oleg Kalistratov on 11.12.22.
//

import UIKit

class SecondPage: UIViewController {
    
    // Инициализация проходит до загрузки вью
    var someProperties: String? {
        didSet{
            print("someProperties SecondPage")
        }
    }
    
    @IBOutlet weak var closeButton: UIButton! {
        didSet{
            print("closeButton SecondPage")
        }
    }
    
    let nextButton: UIButton = {
       let button = UIButton()
        button.setTitle("Next", for: .normal)
        button.backgroundColor = .systemGray
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    // Срабатывает до начала загрузки view, как только поступает команда открытия экрана
    override class func awakeFromNib() {
        print("\(#function) SecondPage")
        
        // Вызывается для всех элементов, которые появляются из Storyboard и Xib(Nib) файлов,
        // происходит до того как будут установлены все оутлеты, не стоит использовать здесь оутлеты
    }
    
    
    // Используется при ручной инициализации вью
    override func loadView() {
        super.loadView()
        print("\(#function) SecondPage")
        // Инициализация вью
    }
    
    // Срабатывает после загрузки view
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(#function) SecondPage")
        self.view.backgroundColor = .green
        setConstraints()
        navigation()
        // Инициализация переменных и объектов
        // Вызывается один раз
    }
    
    private func setConstraints() {
        view.addSubview(nextButton)
        nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        nextButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    private func navigation(){
        nextButton.addTarget(self, action: #selector(showNextScreen), for: .touchUpInside)
    }
    
    @objc func showNextScreen(){
        let thirdPage = ThirdPage()
        self.navigationController?.pushViewController(thirdPage, animated: true)
    }
    
    // Срабатывает перед появлением view на экране
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("\(#function) SecondPage")
        
        // Для более тонкой настройки View,
        // которое нужно сделать без анимации
    }
    
    // Срабатывает перед тем, как размер вью изменился под размер экрана
    override func viewWillLayoutSubviews() {
        print("\(#function) SecondPage")
        
        // Изменение размеров Subviews и их положение если не используем Autolayout
    }
    
    // Тут срабатывает Autolayout
    
    // Срабатывает после того, как размер вью изменился под размер экрана
    override func viewDidLayoutSubviews() {
        print("\(#function) SecondPage")
        
        // Сохранение последнего состояния объекта
    }
    
    override func updateViewConstraints() {
        
        // Изменение значений констант констрейнтов
        super.updateViewConstraints() // super обязательно вызывать в конце
    }
    
    // View появился
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("\(#function) SecondPage")
        
        // Вызывается, когда представление уже загружено,
        // и вы хотите что-то показать.
        
        // Может быть вызван не один раз и поэтому здесь нельзя хранить свойства
        // и методы так как может быть утечка памяти. здесь лучше использовать ресурсоъемкоие операции
        // например получение данных с оповещением пользователя.
    }
    
    // Срабатывает при повороте экрана
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        print("\(#function) SecondPage")
        
        // Для обработки анимации при повороте экрана
    }
    
    // Cрабытывает при нехватки памяти
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("\(#function) SecondPage")
        // Обнуление не используемых объектов
    }
    
    // Срабатывает перед тем, как вью закроется
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("\(#function) SecondPage")
        
        // Сброс значений и параметров, отключение анимации
    }
    
    // Срабатывает посел закрытия вью
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("\(#function) SecondPage")
        
        // Сброс значений и параметров
    }
 
    // Выгружает объект из памяти
    deinit {
        print("\(#function) SecondPage")
    }
    
   
    
}
