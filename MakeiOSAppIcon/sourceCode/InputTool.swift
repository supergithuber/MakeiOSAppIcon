//
//  Panagram.swift
//  MakeiOSAppIcon
//
//  Created by Wuxi on 2019/3/11.
//  Copyright © 2019年 wuxi. All rights reserved.
//

import Foundation


class InputTool {
    
    let consoleIO = ConsoleIO()
    let imageTool = ImageTool()
    let fileManager = FileManager.default
    
    func staticMode() {

        let argument = CommandLine.arguments[1]
        let currentPath = fileManager.currentDirectoryPath
        
        if fileManager.fileExists(atPath: argument){
            imageTool.progressImage(path: argument)
            
        }else if fileManager.fileExists(atPath: currentPath + "/" + argument){
            let path = currentPath + "/" + argument
            imageTool.progressImage(path: path)
            
        }else {
            print("File not exists")
        }
        
        
    }
    
    func printUsage() {
        consoleIO.printUsage()
    }
    
    
}
