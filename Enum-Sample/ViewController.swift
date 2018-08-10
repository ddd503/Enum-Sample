//
//  ViewController.swift
//  Enum-Sample
//
//  Created by kawaharadai on 2018/08/10.
//  Copyright © 2018年 kawaharadai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// BloodType
        print(BloodType(rawValue: 0)!)
        print(BloodType.ab.type)
        print(BloodType.o.personality)
        
        /// FileType
        print(FileType.getFileName(type: .folder(id: 1)))
        print(FileType.getFileName(type: .data(id: 22, folderName: FileType.getFileName(type: .folder(id: 1)))))
    }
}
