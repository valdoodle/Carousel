//
//  IntroViewController.swift
//  Carousel
//
//  Created by Valerie Chao on 10/29/15.
//  Copyright © 2015 Valerie Chao. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var introScrollView: UIScrollView!
    
    
    @IBOutlet weak var photoImageView1: UIImageView!
    
    
    @IBOutlet weak var photoImageView2: UIImageView!
    
    
    @IBOutlet weak var photoImageView3: UIImageView!
    
    
    @IBOutlet weak var photoImageView4: UIImageView!
    
    
    @IBOutlet weak var photoImageView5: UIImageView!
    
    
    @IBOutlet weak var photoImageView6: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        introScrollView.delegate = self
        
        introScrollView.contentSize = CGSize(width: 320, height: 1136)
        photoImageView1.frame.origin.y = 480
        photoImageView1.frame.origin.x = -20
        photoImageView1.transform = CGAffineTransformMakeScale(0.8, 0.8)
        photoImageView1.transform = CGAffineTransformRotate(photoImageView1.transform, CGFloat(-10 * M_PI / 180))
        
        
        photoImageView2.frame.origin.y = 520
        photoImageView2.frame.origin.x = 240
        photoImageView2.transform = CGAffineTransformMakeScale(1.5, 1.5)
        photoImageView2.transform = CGAffineTransformRotate(photoImageView2.transform, CGFloat(-10 * M_PI / 180))
        
        photoImageView3.frame.origin.y = 430
        photoImageView3.frame.origin.x = 220
        photoImageView3.transform = CGAffineTransformMakeScale(1.5, 1.5)
        photoImageView3.transform = CGAffineTransformRotate(photoImageView3.transform, CGFloat(10 * M_PI / 180))
        
        photoImageView4.frame.origin.y = 510
        photoImageView4.frame.origin.x = 130
        photoImageView4.transform = CGAffineTransformMakeScale(1.5, 1.5)
        photoImageView4.transform = CGAffineTransformRotate(photoImageView4.transform, CGFloat(10 * M_PI / 180))
        
        photoImageView5.frame.origin.y = 420
        photoImageView5.frame.origin.x = 12
        photoImageView5.transform = CGAffineTransformMakeScale(1.5, 1.5)
        photoImageView5.transform = CGAffineTransformRotate(photoImageView5.transform, CGFloat(10 * M_PI / 180))
        
        photoImageView6.frame.origin.y = 430
        photoImageView6.frame.origin.x = 120
        photoImageView6.transform = CGAffineTransformMakeScale(1.5, 1.5)
        photoImageView6.transform = CGAffineTransformRotate(photoImageView6.transform, CGFloat(-10 * M_PI / 180))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        print("content offset: \(scrollView.contentOffset)")
        
        //self.photoImageView1.center.y = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: -125, r2Min: 0, r2Max: 180)
        
        UIView.animateWithDuration(0.7) { () -> Void in
            self.photoImageView1.center.y = 820
            self.photoImageView1.center.x = 123
            self.photoImageView1.transform = CGAffineTransformIdentity
            
            self.photoImageView2.center.y = 782
            self.photoImageView2.center.x = 238
            self.photoImageView2.transform = CGAffineTransformIdentity
            
            self.photoImageView3.center.y = 858
            self.photoImageView3.center.x = 238
            self.photoImageView3.transform = CGAffineTransformIdentity
            
            self.photoImageView4.center.y = 935
            self.photoImageView4.center.x = 85
            self.photoImageView4.transform = CGAffineTransformIdentity
            
            self.photoImageView5.center.y = 935
            self.photoImageView5.center.x = 162
            self.photoImageView5.transform = CGAffineTransformIdentity
            
            self.photoImageView6.center.y = 935
            self.photoImageView6.center.x = 238
            self.photoImageView6.transform = CGAffineTransformIdentity
            }
        }
    
    
    
}
