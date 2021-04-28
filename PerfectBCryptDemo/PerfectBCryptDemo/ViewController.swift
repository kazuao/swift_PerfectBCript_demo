//
//  ViewController.swift
//  PerfectBCryptDemo
//
//  Created by Kazunori Aoki on 2021/04/28.
//

import UIKit
import BCrypt

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let startTime = Date()
        let password = "hogehoge1234"
        print("start")
        
        do {
            let salt = try BCrypt.Salt()
            let hashed = try BCrypt.Hash(password, salt: salt)
            print(hashed)
        } catch {
            print(error)
        }
        
        let endTime = Date().timeIntervalSince(startTime)
        print(endTime)
        print("end")
    }


}

