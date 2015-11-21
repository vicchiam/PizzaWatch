//
//  ConfirmarController.swift
//  PizzaWatch
//
//  Created by Victor Chisvert Amat on 21/11/15.
//  Copyright © 2015 Vicchiam. All rights reserved.
//

import WatchKit
import Foundation


class ConfirmarController: WKInterfaceController {
    
    var pizza : Pizza = Pizza()

    @IBOutlet var texto: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        pizza = context as! Pizza
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        texto.setText(pizza.toString())
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func cocinar() {
        
        let cocinar = WKAlertAction(title: "Cocinar", style: WKAlertActionStyle.Default, handler: { () -> Void in
        
            let cocinado = WKAlertAction(title: "Aceptar", style: WKAlertActionStyle.Default, handler: { () -> Void in
                self.popToRootController()
            })
            
            self.presentAlertControllerWithTitle("Cocinado!!!", message: "Pizza Cocinada", preferredStyle: WKAlertControllerStyle.Alert, actions: [cocinado])
            
        })
        
        let cancelar = WKAlertAction(title: "Cancelar", style: WKAlertActionStyle.Default, handler: { ()-> Void in })
        
        self.presentAlertControllerWithTitle("Cocinar", message: "¿Seguro que deseas cocinar?", preferredStyle: WKAlertControllerStyle.SideBySideButtonsAlert, actions: [cocinar,cancelar])
        
    }
    

}
