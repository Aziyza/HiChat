//
//  SignUpVC.swift
//  HiChat
//
//  Created by Mac on 8/20/21.
//

import UIKit

class SignUpVC: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var phoneTextField: UITextField!
    
    @IBOutlet weak var pswTextField: UITextField!
    
    @IBOutlet weak var confirmTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func nextTapped(_ sender: Any) {
        let vc = ChatListVC(nibName: "ChatListVC", bundle: nil)
        let navvc = UINavigationController(rootViewController: vc)
        navvc.modalPresentationStyle = .fullScreen
        self.present(navvc, animated: false, completion: nil)
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
    
    
    
}
