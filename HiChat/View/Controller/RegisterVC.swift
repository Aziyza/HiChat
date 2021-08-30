//
//  RegisterVC.swift
//  HiChat
//
//  Created by Mac on 8/20/21.
//

import UIKit

class RegisterVC: UIViewController {

    let backBarButton: UIBarButtonItem = {
        let button = UIBarButtonItem()
        button.tintColor = #colorLiteral(red: 0.9921568627, green: 0.3254901961, blue: 0.5333333333, alpha: 1)
        button.title = "Login"
        button.style = .plain
        return button
    }()
    
    @IBOutlet weak var phoneTextField: UITextField!
    
    @IBOutlet weak var pswTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.barTintColor = UIColor.white
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationItem.backBarButtonItem = backBarButton
        
    }

    @IBAction func signUpTapped(_ sender: UIButton) {
        let vc = SignUpVC(nibName: "SignUpVC", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func toggleVisible(_ sender: UIButton) {
        if pswTextField.isSecureTextEntry {
            pswTextField.isSecureTextEntry = false
            sender.tintColor = #colorLiteral(red: 0.8901960784, green: 0.2941176471, blue: 0.4784313725, alpha: 1)
            sender.setBackgroundImage(#imageLiteral(resourceName: "visible"), for: .normal)
        } else {
            pswTextField.isSecureTextEntry = true
            sender.tintColor = #colorLiteral(red: 0.8196078431, green: 0.8196078431, blue: 0.8392156863, alpha: 1)
            sender.setBackgroundImage(#imageLiteral(resourceName: "invisible"), for: .normal)
        }
    }
    
    @IBAction func forgotPswTapped(_ sender: UIButton) {
    }
    
}
