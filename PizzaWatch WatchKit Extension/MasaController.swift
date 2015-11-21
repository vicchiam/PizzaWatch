//
//  MasaController.swift
//  PizzaWatch
//
//  Created by Victor Chisvert Amat on 20/11/15.
//  Copyright © 2015 Vicchiam. All rights reserved.
//

import WatchKit
import Foundation


class MasaController: WKInterfaceController {
    
    var pizza : Pizza = Pizza()
    
    @IBOutlet var bDel: WKInterfaceButton!

    @IBOutlet var bCru: WKInterfaceButton!
    
    @IBOutlet var bGru: WKInterfaceButton!
    
    let color1 : UIColor = UIColor.blueColor()
    let color2 : UIColor = UIColor(red: 0.1, green: 0.1, blue: 0.1, alpha: 1)
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        pizza=context as! Pizza
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        accion(pizza.masa, opt: false)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    @IBAction func push1() {
        accion(0, opt: true)
    }
    
    @IBAction func push2() {
        accion(1, opt: true)
    }

    @IBAction func push3() {
        accion(2, opt: true)
    }
    
    func accion(pos : Int, opt : Bool){
        if(pos==0){
            bDel.setBackgroundColor(color1)
            pizza.masa=0
        }
        else{
            bDel.setBackgroundColor(color2)
        }
        if(pos==1){
            bCru.setBackgroundColor(color1)
            pizza.masa=1
        }
        else{
            bCru.setBackgroundColor(color2)
        }
        if(pos==2){
            bGru.setBackgroundColor(color1)
            pizza.masa=2
        }
        else{
            bGru.setBackgroundColor(color2)
        }
        if(opt){
            pushControllerWithName("IDQueso", context: pizza)
        }
        
    }
    
}
