//
//  IngredientesController.swift
//  PizzaWatch
//
//  Created by Victor Chisvert Amat on 20/11/15.
//  Copyright © 2015 Vicchiam. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesController: WKInterfaceController {
    
    var pizza : Pizza = Pizza()
    
    @IBOutlet var jamon: WKInterfaceSwitch!
    
    @IBOutlet var pepe: WKInterfaceSwitch!

    @IBOutlet var pavo: WKInterfaceSwitch!
    
    @IBOutlet var salchicha: WKInterfaceSwitch!
    
    @IBOutlet var aceituna: WKInterfaceSwitch!
    
    @IBOutlet var cebolla: WKInterfaceSwitch!
    
    @IBOutlet var pimiento: WKInterfaceSwitch!
    
    @IBOutlet var pinya: WKInterfaceSwitch!
    
    @IBOutlet var anchoa: WKInterfaceSwitch!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        pizza = context as! Pizza
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        ponerIng()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func continuar() {
        var cont: Int = 0
        for i in 0...8 {
            if(pizza.ingredientes[i]==1){
                cont++
            }
        }
        if(cont<1 || cont>5){
            let ok = WKAlertAction(title: "OK", style: WKAlertActionStyle.Cancel, handler: { () -> Void in })
            self.presentAlertControllerWithTitle("Advertencia!!", message: "Debes elegir entre 1 y 5 ingredientes", preferredStyle: WKAlertControllerStyle.Alert, actions: [ok])
        }
        else{
            pushControllerWithName("IDConfirmar", context: pizza)
        }
    }
    
    func ponerIng(){
        jamon.setOn((pizza.ingredientes[0]==1))
        pepe.setOn((pizza.ingredientes[1]==1))
        pavo.setOn((pizza.ingredientes[2]==1))
        salchicha.setOn((pizza.ingredientes[3]==1))
        aceituna.setOn((pizza.ingredientes[4]==1))
        cebolla.setOn((pizza.ingredientes[5]==1))
        pimiento.setOn((pizza.ingredientes[6]==1))
        pinya.setOn((pizza.ingredientes[7]==1))
        anchoa.setOn((pizza.ingredientes[8]==1))
    }
    
    @IBAction func jamonC(value: Bool) {
        pizza.ingredientes[0]=(value ? 1 : 0)
    }
    
    @IBAction func pepeC(value: Bool) {
        pizza.ingredientes[1]=(value ? 1 : 0)
    }
    
    @IBAction func pavoC(value: Bool) {
        pizza.ingredientes[2]=(value ? 1 : 0)
    }
    
    @IBAction func salchichaC(value: Bool) {
        pizza.ingredientes[3]=(value ? 1 : 0)
    }
    
    @IBAction func aceitunaC(value: Bool) {
        pizza.ingredientes[4]=(value ? 1 : 0)
    }
    
    @IBAction func cebollaC(value: Bool) {
        pizza.ingredientes[5]=(value ? 1 : 0)
    }
    
    @IBAction func pimientoC(value: Bool) {
        pizza.ingredientes[6]=(value ? 1 : 0)
    }
    
    @IBAction func pinyaC(value: Bool) {
        pizza.ingredientes[7]=(value ? 1 : 0)
    }
    
    @IBAction func anchoaC(value: Bool) {
        pizza.ingredientes[8]=(value ? 1 : 0)
    }
}
