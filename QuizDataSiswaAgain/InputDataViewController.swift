//
//  InputDataViewController.swift
//  QuizDataSiswaAgain
//
//  Created by Macbook pro on 26/10/17.
//  Copyright © 2017 Smk IDN. All rights reserved.
//

import UIKit

class InputDataViewController: UIViewController {
    @IBOutlet weak var etUsername: UITextField!
    @IBOutlet weak var etEmail: UITextField!
    @IBOutlet weak var etPassword: UITextField!
    @IBOutlet weak var etSchool: UITextField!
    @IBOutlet weak var etClass: UITextField!
    @IBOutlet weak var etAge: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        //check what segue with name passData is available or not
//        if(segue.identifier == "passData"){
//            let sendData = segue.destination as! DataInputedViewController
//            sendData.username = etUsername.text!
//            sendData.email = etEmail.text!
//            //send password data
//            sendData.password = etPassword.text!
//            sendData.school = etSchool.text!
//            //send email data
//            sendData.classs = etClass.text!
//            //send password data
//            sendData.age = etAge.text!
//        }
    }
    
    @IBAction func btnSubmit(_ sender: Any) {
        
        //deklarasi context
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        //deklarasi task
        let nameSiswa = DataSiswa(context: context) //deklarasi nameTask sebagai konteks dari entiti Task
        
        nameSiswa.ds_username = etUsername.text //deklarasikan bahwa nameTask.name_task itu isinya dari etNametask.text
        
        nameSiswa.ds_email = etEmail.text
        nameSiswa.ds_password = etPassword.text
        nameSiswa.ds_school = etSchool.text
        nameSiswa.ds_age = etAge.text
        nameSiswa.ds_class = etClass.text
        
        
        if (etUsername.text == "")&&(etEmail.text == "")&&(etPassword.text == "")&&(etSchool.text == "")&&(etClass.text == "")&&(etAge.text == "") {
            let alertController = UIAlertController(title: "Attention !",
                                                    message: "Input Profile Can't Be Empty", preferredStyle : .alert)
            alertController.addAction(UIAlertAction(title: "OK",
                                                    style: .default,handler: nil))
            present(alertController, animated: true, completion: nil)
        }else if (etUsername.text == "")&&(etEmail.text == "")&&(etPassword.text == "")&&(etSchool.text == "")&&(etClass.text == ""){
            let alertController = UIAlertController(title: "Attention !",
                                                    message: "Input Profile Can't Be Empty", preferredStyle : .alert)
            alertController.addAction(UIAlertAction(title: "OK",
                                                    style: .default,handler: nil))
            present(alertController, animated: true, completion: nil)
        }else if(etUsername.text == "")&&(etEmail.text == "")&&(etPassword.text == "")&&(etSchool.text == "") && (etAge.text == ""){
            let alertController = UIAlertController(title: "Attention !",
                                                    message: "Input Profile Can't Be Empty", preferredStyle : .alert)
            alertController.addAction(UIAlertAction(title: "OK",
                                                    style: .default,handler: nil))
            present(alertController, animated: true, completion: nil)
        }else if (etEmail.text == "")&&(etPassword.text == "")&&(etSchool.text == "")&&(etClass.text == ""){
            let alertController = UIAlertController(title: "Attention !",
                                                    message: "Input Profile Can't Be Empty", preferredStyle : .alert)
            alertController.addAction(UIAlertAction(title: "OK",
                                                    style: .default,handler: nil))
            present(alertController, animated: true, completion: nil)
        }else if (etUsername.text == "")&&(etEmail.text == "")&&(etPassword.text == ""){
            let alertController = UIAlertController(title: "Attention !",
                                                    message: "Input Profile Can't Be Empty", preferredStyle : .alert)
            alertController.addAction(UIAlertAction(title: "OK",
                                                    style: .default,handler: nil))
            present(alertController, animated: true, completion: nil)
        }else if (etEmail.text == "")&&(etPassword.text == "")&&(etSchool.text == "")&&(etClass.text == "")&&(etAge.text == ""){
            let alertController = UIAlertController(title: "Attention !",
                                                    message: "Input Profile Can't Be Empty", preferredStyle : .alert)
            alertController.addAction(UIAlertAction(title: "OK",
                                                    style: .default,handler: nil))
            present(alertController, animated: true, completion: nil)
        }else{
            func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                //check what segue with name passData is available or not
                if(segue.identifier == "passData"){
                    let sendData = segue.destination as! DataInputedViewController
//
//                    sendData.username = etUsername.text!
//                    sendData.email = etEmail.text!
//                    sendData.password = etPassword.text!
//                    sendData.school = etSchool.text!
//                    sendData.classs = etClass.text!
//                    sendData.age = etAge.text!
              }
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
