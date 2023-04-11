//
//  ViewController.swift
//  warningMessage
//
//  Created by Kadir Hocaoğlu on 5.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var password2TextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signUpClick(_ sender: Any) {
        if (emailTextField.text) != "" {
            if emailTextField.text!.contains("@"){
                if (passwordTextField.text) != ""{
                    if passwordTextField.text == password2TextField.text{
                        successMessage(message: "Kayıt Yapıldı!")
                    }
                    else{
                       warningMessage(message: "Şifreler eşleşmedi")}
                 }
                else{
                    warningMessage(message: "Password boş bırakılamaz.")
                }
            }
            else{
                warningMessage(message:  "Mail adresi yanlış girildi.")

            }
        }
        else{
            warningMessage(message: "Email boş bırakılamaz!" )
        }
        
    }
    func warningMessage(message : String){
        let warningMessage = UIAlertController(title: "Hata Mesajı!", message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Ok", style:.default){
            (UIAlertAction) in //Ok buttona tıklanınca olacaklar
            print("Ok button Click!")
        }
        warningMessage.addAction(okButton)
        self.present(warningMessage, animated: true)
    }
    func successMessage(message : String){
        let warningMessage = UIAlertController(title: "Başarılı!", message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Ok", style:.default){
            (UIAlertAction) in //Ok buttona tıklanınca olacaklar
            print("Ok button Click!")
        }
        warningMessage.addAction(okButton)
        self.present(warningMessage, animated: true)
    }

}

