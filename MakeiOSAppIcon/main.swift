//
//  main.swift
//  MakeiOSAppIcon
//
//  Created by Wuxi on 2019/3/7.
//  Copyright © 2019年 wuxi. All rights reserved.
//

import Foundation


let inputTool = InputTool()
if CommandLine.argc < 2 {
    inputTool.printUsage()
} else {
    inputTool.staticMode()
}
