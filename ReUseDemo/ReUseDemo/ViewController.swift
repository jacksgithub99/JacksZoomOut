//
//  ViewController.swift
//  ReUseDemo
//
//  Created by Weshare on 2018/7/11.
//  Copyright © 2018年 Weshare. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var innerView: UIView!
    
    var frameView: UIView!
    var index = 0
    
    //MARK: Lifecircle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupUI()
        initData()
    }
    //    初始化UI
    func setupUI() {
        frameView = UIView(frame: CGRect(x: 150, y: 0, width: 88, height: 99))
        frameView.backgroundColor = UIColor.purple
        view.addSubview(frameView)
    }
    //    初始化数据
    func initData() {
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    //MARK: - touch event
    
    @IBAction func btnClick(_ sender: UIButton) {
        
        if index == 0 {
            JKZoomViewsManager.sharedInstance.show(zoomView: greenView)
        }else if index == 1 {
            JKZoomViewsManager.sharedInstance.show(zoomView: innerView)
        }else if index == 2 {
            JKZoomViewsManager.sharedInstance.show(zoomView: redView)
        }else if index == 3 {
            JKZoomViewsManager.sharedInstance.show(zoomView: frameView)
            index = -1
        }
        index += 1
        
    }
    
    //MARK: task
    
    //MARK: request

}
