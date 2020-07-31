//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var imageView: UIImageView!
    
    // MARK: - Properties
    let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png")]
    
    // MARK: - IBAction
    @IBAction func askButtonTapped(_ sender: Any) {
        let currentImage = randomImage(imageArray: ballArray)
        imageView.image = currentImage
    }
    
    // MARK: - Private Functions
    private func randomImage(imageArray: [UIImage]) -> UIImage {
        let randomIndex = randomNumber(closedRange: 0...imageArray.count - 1)
        print(randomIndex)
        return imageArray[randomIndex]
    }
    
    private func randomNumber(closedRange: ClosedRange<Int>) -> Int{
        return Int.random(in: closedRange)
    }
}

