//
//  InterfaceController.swift
//  Rd-N-Wt-Files WatchKit Extension
//
//  Created by Armando Carrillo on 08/01/20.
//  Copyright © 2020 Armando Carrillo. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        testFile()
        testFile()
        
        // Configure interface objects here.
    }
    func getDocumentsDirectory() -> URL { let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
       return paths[0]
    }
    
    func testFile() { let saveURL = getDocumentsDirectory().appendingPathComponent("shared_file")
        if let contents = try? String(contentsOf: saveURL) {//intenta cargar el la cadena, si se puede leer ejecutar :
        print("Reading from file")
        print(contents)
           } else {
        print("Writing to file")
        try? "This is the saved file".write(to: saveURL, atomically: true, encoding: String.Encoding.utf8)//escribe en una url, codifica con String.Encoding.utf8
        } }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
