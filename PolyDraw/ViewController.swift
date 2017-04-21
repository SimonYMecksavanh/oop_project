//
//  ViewController.swift
//  PolyDraw
//
//  Created by Chris Chadillon on 2017-03-02.
//  Copyright © 2017 Chris Chadillon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func shapeChosen(_ sender: UISegmentedControl) {
        self.drawingView.shapeType = sender.selectedSegmentIndex
    }
    
    var undoButtonStaus: Bool!
    
    @IBOutlet weak var drawingView: DrawingView!
    @IBOutlet var undoToolBarButton: UIBarButtonItem!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func UndoButton(_ sender: UIBarButtonItem) {
        self.drawingView.removeLastShape()
    }
    
    func undoButtonStatus(status: Bool){
        undoToolBarButton.isEnabled = status
    }

}

