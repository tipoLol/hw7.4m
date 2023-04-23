//
//  Logic.swift
//  hw7.4m
//
//  Created by Мухамед on 23/4/23.
//

import SnapKit

class Logic {
    func equal(num1: String, num2: String, operation: String) -> String {
        var result = ""
        if operation == "+" {
            result = String(Int(num1)! + Int(num2)!)
        } else if operation == "-" {
            result = String(Int(num1)! - Int(num2)!)
        } else if operation == "*" {
            result = String(Int(num1)! * Int(num2)!)
        } else if operation == "/" {
            result = String(Int(num1)! / Int(num2)!)
        }
        
        return result
    }
}
