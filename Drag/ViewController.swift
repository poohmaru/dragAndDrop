//
//  ViewController.swift
//  Drag
//
//  Created by Arai Marina on 2015/09/07.
//  Copyright (c) 2015年 Arai Marina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var panGesture: UIPanGestureRecognizer!
    @IBOutlet var panGestureblue: UIPanGestureRecognizer!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dragGesture(sender: UIPanGestureRecognizer) {
        var point: CGPoint = sender.translationInView(self.view)
        var movedPoint: CGPoint = CGPointMake(sender.view!.center.x + point.x, sender.view!.center.y + point.y)
        sender.view!.center = movedPoint
        sender.setTranslation(CGPointZero, inView: self.view)
    }

    @IBAction func bluePan(sender: UIPanGestureRecognizer) {
        var point: CGPoint = sender.translationInView(self.view)
        var movedPoint: CGPoint = CGPointMake(sender.view!.center.x + point.x, sender.view!.center.y + point.y)
        sender.view!.center = movedPoint
        sender.setTranslation(CGPointZero, inView: self.view)
    }
}

