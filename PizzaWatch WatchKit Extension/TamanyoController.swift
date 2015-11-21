//
//  TamanyoController.swift
//  PizzaWatch
//
//  Created by Victor Chisvert Amat on 20/11/15.
//  Copyright © 2015 Vicchiam. All rights reserved.
//

import WatchKit
import Foundation

class TamanyoController: WKInterfaceController {

    var pizza : Pizza = Pizza()
    
    @IBOutlet var bPeq: WKInterfaceButton!
    
    @IBOutlet var bMed: WKInterfaceButton!
    
    @IBOutlet var bGra: WKInterfaceButton!
    
    let color1 : UIColor = UIColor.blueColor()
    let color2 : UIColor = UIColor(red: 0.1, green: 0.1, blue: 0.1, alpha: 1)
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        pizza=context as! Pizza
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        accion(pizza.tamanyo,opt: false)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func pushPeq() {
        accion(0, opt: true)
    }
    
    @IBAction func pushMed() {
        accion(1, opt: true)
    }
    
    @IBAction func pushGra() {
        accion(2, opt: true)
    }
    
    func accion(pos : Int, opt : Bool){
        if(pos==0){
            bPeq.setBackgroundColor(color1)
            pizza.tamanyo=0
        }
        else{
            bPeq.setBackgroundColor(color2)
        }
        if(pos==1){
            bMed.setBackgroundColor(color1)
            pizza.tamanyo=1
        }
        else{
            bMed.setBackgroundColor(color2)
        }
        if(pos==2){
            bGra.setBackgroundColor(color1)
            pizza.tamanyo=2
        }
        else{
            bGra.setBackgroundColor(color2)
        }
        if(opt){
            pushControllerWithName("IDMasa", context: pizza)
        }
    }
    
}
