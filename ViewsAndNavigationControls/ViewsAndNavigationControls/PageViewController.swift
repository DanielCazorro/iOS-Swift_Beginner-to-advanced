//
//  PageViewController.swift
//  ViewsAndNavigationControls
//
//  Created by Daniel Cazorro Frias  on 12/1/24.
//

import UIKit

class PageViewController: UIPageViewController {
    
    private var myController: [UIViewController] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myBlueVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "vcBlue")
        
        let myPinkVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "vcPink")
        
        myController.append(myBlueVC)
        myController.append(myPinkVC)
        
        setViewControllers([myBlueVC], direction: .forward, animated: true, completion: nil)
        
        dataSource = self
    }
}


extension PageViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        let index = myController.firstIndex(of: viewController)
        if index == 0 {
            return myController.last
        }
        return myController.first
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        let index = myController.firstIndex(of: viewController)
        if index == 0 {
            return myController.last
        }
        return myController.first
    }
}



