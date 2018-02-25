//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Nada Yehia Dawoud on 2/11/18.
//  Copyright © 2018 Mobile Apps Kitchen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var magic8BallImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomizeBallImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func askButtonPressed(_ sender: UIButton) {
        randomizeBallImages()
    }
    
    func randomizeBallImages() {
        let ballRandomIndex = Int(arc4random_uniform(5))
        
        magic8BallImageView.image = UIImage(named: "ball\(ballRandomIndex + 1)")
}
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randomizeBallImages()
    }
}

