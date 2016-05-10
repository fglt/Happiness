//
//  HappinessViewController.swift
//  Happiness
//
//  Created by Coding on 5/9/16.
//  Copyright © 2016 Coding. All rights reserved.
//

import UIKit

class HappinessViewController: UIViewController, FaceViewDataSource{
    
    
    

    @IBOutlet weak var faceView: FaceView! {
        didSet {
            faceView.dataSource = self
        }
    }
    var happiness: Int = 70 {
        didSet {
            happiness = min( max(happiness, 0), 100)
            updateUI()
        }
    }
    
    private func  updateUI(){
        faceView.setNeedsDisplay()
    }
    
    
    func smilinessForFaceView(sender: FaceView) -> Double? {
        
        
        return  Double(happiness-50)/50
    }

}
