//
//  TutorialViewController.swift
//  Carousel
//
//  Created by Valerie Chao on 10/31/15.
//  Copyright © 2015 Valerie Chao. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var button: UIImageView!

    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.alpha = 0
        
        scrollView.delegate = self

        scrollView.contentSize = CGSize(width: 1280, height: 568)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        print("scrolling")
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
        // Get the current page based on the scroll offset
        var page : Int = Int(round(scrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page
        
        if pageControl.currentPage == 3 {
            pageControl.hidden = true
            UIView.animateWithDuration(0.3, animations: { () -> Void in
                self.button.alpha = 1
            })
        } else {
            pageControl.hidden = false
            UIView.animateWithDuration(0.1, animations: { () -> Void in
                self.button.alpha = 0
            })
        }
    }
    
    
    @IBAction func didPressButton(sender: AnyObject) {
    }

}
