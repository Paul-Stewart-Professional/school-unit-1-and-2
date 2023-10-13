//
//  ViewController.swift
//  iSpy
//
//  Created by Paul Stewart on 10/12/23.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var snek: UIImageView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        scrollView.delegate = self
    }
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return snek
    }
    
    func updateZoomFor(size: CGSize) {
        let widthScale = size.width / snek.bounds.width
        let heightScale = size.height / snek.bounds.height
        let scale = min(widthScale, heightScale)
        scrollView.minimumZoomScale = scale
        scrollView.zoomScale = scale
    }
    override func viewDidAppear(_ animated: Bool) {
        updateZoomFor(size: view.bounds.size)
    }
    
    
}

