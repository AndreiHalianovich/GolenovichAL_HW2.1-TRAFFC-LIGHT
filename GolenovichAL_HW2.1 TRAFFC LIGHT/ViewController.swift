//
//  ViewController.swift
//  GolenovichAL_HW2.1 TRAFFC LIGHT
//
//  Created by Andrei Halianovich on 27.01.21.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet var trafficLightsArray: [UIView]!
    @IBOutlet var startButton: UIButton!
    var click = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for light in trafficLightsArray {
            light.layer.cornerRadius = light.frame.height / 2
        }
        startButton.layer.cornerRadius = startButton.frame.height / 4
    }
    
    @IBAction func startButtonDidClick(_ sender: UIButton) {
        startButton.setTitle("NEXT", for: .normal)
        switch click {
        case 0:
            trafficLightsArray[click+2].alpha = 0.3
            trafficLightsArray[click].alpha = 1
            click += 1
        case 1:
            trafficLightsArray[click - 1].alpha = 0.3
            trafficLightsArray[click].alpha = 1
            click += 1
        case 2:
            trafficLightsArray[click - 1].alpha = 0.3
            trafficLightsArray[click].alpha = 1
            click = 0
        default:
            break
        }
    }
}

