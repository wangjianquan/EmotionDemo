//
//  ViewController.swift
//  EmotionDemo
//
//  Created by landixing on 2017/6/8.
//  Copyright © 2017年 WJQ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var textview: UITextView!

    fileprivate lazy var emotion : EmotionViewController = EmotionViewController { [weak self](emotion) in

        self!.textview.insertEmoticon(emotion)

    }
    //POST
    @IBAction func SendClick(_ sender: Any) {
      print(textview.getEmoticonString())
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        textview.inputView = emotion.view


        
        
    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        textview.becomeFirstResponder()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

