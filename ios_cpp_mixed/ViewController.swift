//
//  ViewController.swift
//  ios_cpp_mixed
//
//  Created by 黃冠禎 on 2023/6/30.
//

import UIKit
//import CxxStdlib
import Bridge

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showMessage(sender: UIButton) {
        // C++ function call
        var output_addTwo = String(addTwo(3))

        // C++ class initialization
        // let car_name: std.string = "C class"
        var car_name: [Int8] = [67, 32, 99, 108, 97, 115, 115, 0]
        let int8Pointer = UnsafeMutablePointer<Int8>.allocate(capacity: 8)
        int8Pointer.initialize(from: &car_name, count: 8)
        var benz = Car(int8Pointer, 5, 69999.99)
        benz.show()

        // C++ pass pointer
        var bytes: [Int32] = [39, 77, 111]
        let int32Pointer = UnsafeMutablePointer<Int32>.allocate(capacity: 3)
        int32Pointer.initialize(from: &bytes, count: 3)
        let reduceSum = benz.sum(int32Pointer, 3)
        
        // C++ pass by reference and alter value
//        var car_info: std.string = ""
//        benz.getInfo(&car_info)
//        benz.printInfo(car_info)
        
        // Show some result from C++ lib
        let alertController = UIAlertController(title: "Welcome to My First App", message: String(reduceSum), preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
}

