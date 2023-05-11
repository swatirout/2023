//
//  ViewController.swift
//  LoginFormCombine
//
//  Created by Swati Rout on 09/05/23.
//

import UIKit
import Combine

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextFiled: UITextField!
    @IBOutlet weak var logInBtn: UIButton!
    private var subscriptions = Set<AnyCancellable>()

    override func viewDidLoad() {
        super.viewDidLoad()
        logInBtn.isEnabled = false
        observeTextFields()
    }
    
    private func observeTextFields() {
        let usernamePublisher = NotificationCenter.default.publisher(for: UITextField.textDidChangeNotification, object: usernameTextField)
                .map { [unowned self] _ in self.usernameTextField.text ?? "" }
                .map { email in
                    // Add validation logic here
                    return !email.isEmpty
                }
                .eraseToAnyPublisher()
        
        let passwordPublisher = NotificationCenter.default.publisher(for: UITextField.textDidChangeNotification, object: passwordTextFiled)
            .map{ [unowned self] _ in self.usernameTextField.text  ?? ""}
            .map{password in
                return !password.isEmpty
            }
        
            .eraseToAnyPublisher()
        let loginEnabledPublisher = Publishers.CombineLatest(usernamePublisher,passwordPublisher)
            .map {emailvalid ,passwordvalid in
               return emailvalid && passwordvalid
            }
            .receive(on: DispatchQueue.main)
            .assign(to: \.isEnabled, on: logInBtn)
            .store(in: &subscriptions)
       
        }
    

    
    
}

