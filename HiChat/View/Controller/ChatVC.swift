//
//  ChatVC.swift
//  HiChat
//
//  Created by Mac on 8/21/21.
//

import UIKit

class ChatVC: UIViewController {

    var keyboardHeight: CGFloat?
    
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    @IBOutlet weak var tableview: UITableView! {
        didSet {
            tableview.delegate = self
            tableview.dataSource = self
            configureTableview()
            tableview.register(UINib(nibName: "ChatCell", bundle: nil), forCellReuseIdentifier: "ChatCell")
            
        }
    }
    
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Zafar"
        textField.delegate = self
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillShow),
            name: UIResponder.keyboardWillShowNotification,
            object: nil
        )
        
    }
    
    
    @IBAction func sendTapped(_ sender: Any) {
        
    }
    
    @objc func keyboardWillShow(_ notification: Notification) {
        if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
            let keyboardRectangle = keyboardFrame.cgRectValue
            let keyboardHeight = keyboardRectangle.height
            
            UIView.animate(withDuration: 0.15) {
                self.heightConstraint.constant = keyboardHeight + 50
                self.view.layoutIfNeeded()
                
            
            }
        }
    }
    
}

extension ChatVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableview.dequeueReusableCell(withIdentifier: "ChatCell", for: indexPath) as? ChatCell else { return UITableViewCell() }
        return cell
        
    }
    
    func configureTableview() {
        tableview.estimatedRowHeight = 80
        tableview.rowHeight = UITableView.automaticDimension
    }
}

//MARK:- TextField Delegate Methods
extension ChatVC: UITextFieldDelegate {

    //TODO: Declare textFieldDidBeginEditing here:
    func textFieldDidBeginEditing(_ textField: UITextField) {
            
//        UIView.animate(withDuration: 0.2) {
//            self.heightConstraint.constant = self.keyboardHeight! + 80
//            self.view.layoutIfNeeded()
//
//
//        }
    }

    //TODO: Declare textFieldDidEndEditing here:
    func textFieldDidEndEditing(_ textField: UITextField) {
                
        UIView.animate(withDuration: 0.3) {
            self.heightConstraint.constant = 80
            self.view.layoutIfNeeded()
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.endEditing(true)
    }
}
