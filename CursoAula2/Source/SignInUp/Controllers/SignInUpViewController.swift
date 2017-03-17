//
//  SignInUpViewController.swift
//  CursoAula2
//
//  Created by Gildo Vieira da Cunha Neto on 11/03/17.
//  Copyright © 2017 Gildo Vieira da Cunha Neto. All rights reserved.
//

import UIKit

class SignInUpViewController: UIViewController {

    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var usuarioTextField: UITextField!
    @IBOutlet weak var senhaTextField: UITextField!
    @IBOutlet weak var salvarSwitch: UISwitch!
    @IBOutlet weak var quadradoView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        quadradoView.layer.cornerRadius = (self.quadradoView.frame.width)/2
        quadradoView.clipsToBounds = true
    }
    
    @IBAction func performLogin(_ sender: Any) {
        if(usuarioTextField.text == "usuario" && senhaTextField.text == "senha") {
            loginLabel.text = "Usuário está logado"
            self.performSegue(withIdentifier: "RealizarLoginSegue", sender: self)
        } else {
            loginLabel.text = "Usuário não está logado"
        }
    }
    
    
    @IBAction func performSwitchChange(_ sender: Any) {
        quadradoView.backgroundColor = salvarSwitch.isOn ? UIColor.green : UIColor.red
    }
}
