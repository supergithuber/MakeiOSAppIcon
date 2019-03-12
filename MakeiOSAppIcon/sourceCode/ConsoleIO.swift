//
//  ConsoleIO.swift
//  MakeiOSAppIcon
//
//  Created by Wuxi on 2019/3/11.
//  Copyright © 2019年 wuxi. All rights reserved.
//

import Foundation

enum OutputType {
    case error
    case standard
}


class ConsoleIO {
    func writeMessage(_ message: String, to: OutputType = .standard) {
        switch to {
        case .standard:
            print("\(message)")
        case .error:
            fputs("Error: \(message)\n", stderr)
        }
    }
    
    func printUsage() {
        
        let executableName = (CommandLine.arguments[0] as NSString).lastPathComponent
        
        writeMessage("usage:")
        writeMessage("\(executableName) imagePath")
        writeMessage("or")
        writeMessage("\(executableName) -h to show usage information")
    }
}
