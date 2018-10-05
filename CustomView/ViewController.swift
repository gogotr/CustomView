//
//  ViewController.swift
//  CustomView
//
//  Created by 이상묵 on 02/10/2018.
//  Copyright © 2018 이상묵. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btn = UIButton(type: UIButtonType.system)
        btn.frame = CGRect(x: 50, y: 100, width: 150, height: 30)
        btn.setTitle("test button", for: UIControlState.normal)
        btn.center = CGPoint(x: self.view.frame.size.width / 2, y: 100)
        self.view.addSubview(btn)
        
        
        //what is #selector??
        //@objc으로 선언된 함수를 참조하는 키워드
        btn.addTarget(self, action: #selector(btnClick(_:)) ,for: .touchUpInside)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func btnClick(_ sender:Any)
    {
        if let btn = sender as? UIButton{
            btn.setTitle("btn have been cliked", for: UIControlState.normal)
        }
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

