//
//  OptionsViewController.swift
//  PolyDraw
//
//  Created by Mecksavanh, Simon on 2017-04-20.
//  Copyright © 2017 Chris Chadillon. All rights reserved.
//

import UIKit

class OptionsViewController: UIViewController {

    
    
    @IBOutlet var lineWidthSlider: UISlider!
    @IBOutlet var lineColorSelector: UISegmentedControl!
    @IBOutlet var filledSwitch: UISwitch!
    @IBOutlet var fillColorSelector: UISegmentedControl!
    @IBOutlet var preview: UIView!
    var drawingView:DrawingView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lineWidthSlider.minimumValue = 0
        lineWidthSlider.maximumValue = 10
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func saveButton(_ sender: UIBarButtonItem) {
        self.drawingView.theLineWidth = CGFloat(lineWidthSlider.value)
        self.drawingView.theLineColor = lineColor(index: lineColorSelector.selectedSegmentIndex)
        self.drawingView.isFill = filledSwitch.isOn
        self.drawingView.theFillColor = lineColor(index: fillColorSelector.selectedSegmentIndex)
    }

    @IBAction func closeButton(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    
    func lineColor(index: Int) -> CGColor{
        switch index{
        case 0: return UIColor.red.cgColor
        case 1: return UIColor.green.cgColor
        case 2: return UIColor.blue.cgColor
        case 3: return UIColor.yellow.cgColor
        case 4: return UIColor.purple.cgColor
        case 5: return UIColor.black.cgColor
        default: return UIColor.green.cgColor
        }
    }

}

