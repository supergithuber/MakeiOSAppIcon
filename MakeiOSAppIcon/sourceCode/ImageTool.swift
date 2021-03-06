//
//  ImageTool.swift
//  MakeiOSAppIcon
//
//  Created by Wuxi on 2019/3/11.
//  Copyright © 2019年 wuxi. All rights reserved.
//

import Foundation
import AppKit

private let icon_1024_imageName = "icon-1024.png"
private let icon_83p5_2x_imageName = "icon-83.5@2x.png"
private let icon_76_2x_imageName = "icon-76@2x.png"
private let icon_76_imageName = "icon-76.png"
private let icon_72_2x_imageName = "icon-72@2x.png"
private let icon_72_imageName = "icon-72.png"
private let icon_60_3x_imageName = "icon-60@3x.png"
private let icon_60_2x_imageName = "icon-60@2x.png"
private let icon_57_2x_imageName = "icon-57@2x.png"
private let icon_57_imageName = "icon-57.png"
private let icon_50_2x_imageName = "icon-50@2x.png"
private let icon_50_imageName = "icon-50.png"
private let icon_40_3x_imageName = "icon-40@3x.png"
private let icon_40_2x_imageName = "icon-40@2x.png"
private let icon_40_imageName = "icon-40.png"
private let icon_29_3x_imageName = "icon-29@3x.png"
private let icon_29_2x_imageName = "icon-29@2x.png"
private let icon_29_2x_ipad_imageName = "icon-29@2x-ipad.png"
private let icon_29_imageName = "icon-29.png"
private let icon_29_ipad_imageName = "icon-29-ipad.png"
private let icon_20_3x_imageName = "icon-20@3x.png"
private let icon_20_2x_imageName = "icon-20@2x.png"
private let icon_20_2x_ipad_imageName = "icon-20@2x-ipad.png"
private let icon_20_ipad_imageName = "icon-20-ipad.png"

class ImageTool{
    
    let fileManager = FileManager.default
    let consoleIO = ConsoleIO()
    
    func progressImage(path: String){
        let data = fileManager.contents(atPath: path)
        if let data = data, let image = NSImage(data: data){
            guard image.size.width == 1024 && image.size.height == 1024 else {
                consoleIO.writeMessage("please input a 1024*1024 image")
                return
            }
            let icon_1024 = self.resizeImage(image: image, forSize: CGSize(width: 1024, height: 1024))
            let icon_83p5_2x = self.resizeImage(image: image, forSize: CGSize(width: 167, height: 167))
            let icon_76_2x = self.resizeImage(image: image, forSize: CGSize(width: 152, height: 152))
            let icon_76 = self.resizeImage(image: image, forSize: CGSize(width: 76, height: 76))
            let icon_72_2x = self.resizeImage(image: image, forSize: CGSize(width: 144, height: 144))
            let icon_72 = self.resizeImage(image: image, forSize: CGSize(width: 72, height: 72))
            let icon_60_3x = self.resizeImage(image: image, forSize: CGSize(width: 180, height: 180))
            let icon_60_2x = self.resizeImage(image: image, forSize: CGSize(width: 120, height: 120))
            let icon_57_2x = self.resizeImage(image: image, forSize: CGSize(width: 114, height: 114))
            let icon_57 = self.resizeImage(image: image, forSize: CGSize(width: 57, height: 57))
            let icon_50_2x = self.resizeImage(image: image, forSize: CGSize(width: 100, height: 100))
            let icon_50 = self.resizeImage(image: image, forSize: CGSize(width: 50, height: 50))
            let icon_40_3x = self.resizeImage(image: image, forSize: CGSize(width: 120, height: 120))
            let icon_40_2x = self.resizeImage(image: image, forSize: CGSize(width: 80, height: 80))
            let icon_40 = self.resizeImage(image: image, forSize: CGSize(width: 40, height: 40))
            let icon_29_3x = self.resizeImage(image: image, forSize: CGSize(width: 87, height: 87))
            let icon_29_2x = self.resizeImage(image: image, forSize: CGSize(width: 58, height: 58))
            let icon_29_2x_ipad = self.resizeImage(image: image, forSize: CGSize(width: 58, height: 58))
            let icon_29 = self.resizeImage(image: image, forSize: CGSize(width: 29, height: 29))
            let icon_29_ipad = self.resizeImage(image: image, forSize: CGSize(width: 29, height: 29))
            let icon_20_3x = self.resizeImage(image: image, forSize: CGSize(width: 60, height: 60))
            let icon_20_2x = self.resizeImage(image: image, forSize: CGSize(width: 40, height: 40))
            let icon_20_2x_ipad = self.resizeImage(image: image, forSize: CGSize(width: 40, height: 40))
            let icon_20_ipad = self.resizeImage(image: image, forSize: CGSize(width: 20, height: 20))
            
            writeToFolder(image: icon_1024, fileName: icon_1024_imageName)
            writeToFolder(image: icon_83p5_2x, fileName: icon_83p5_2x_imageName)
            writeToFolder(image: icon_76_2x, fileName: icon_76_2x_imageName)
            writeToFolder(image: icon_76, fileName: icon_76_imageName)
            writeToFolder(image: icon_72_2x, fileName: icon_72_2x_imageName)
            writeToFolder(image: icon_72, fileName: icon_72_imageName)
            writeToFolder(image: icon_60_3x, fileName: icon_60_3x_imageName)
            writeToFolder(image: icon_60_2x, fileName: icon_60_2x_imageName)
            writeToFolder(image: icon_57_2x, fileName: icon_57_2x_imageName)
            writeToFolder(image: icon_57, fileName: icon_57_imageName)
            writeToFolder(image: icon_50_2x, fileName: icon_50_2x_imageName)
            writeToFolder(image: icon_50, fileName: icon_50_imageName)
            writeToFolder(image: icon_40_3x, fileName: icon_40_3x_imageName)
            writeToFolder(image: icon_40_2x, fileName: icon_40_2x_imageName)
            writeToFolder(image: icon_40, fileName: icon_40_imageName)
            writeToFolder(image: icon_29_3x, fileName: icon_29_3x_imageName)
            writeToFolder(image: icon_29_2x, fileName: icon_29_2x_imageName)
            writeToFolder(image: icon_29_2x_ipad, fileName: icon_29_2x_ipad_imageName)
            writeToFolder(image: icon_29, fileName: icon_29_imageName)
            writeToFolder(image: icon_29_ipad, fileName: icon_29_ipad_imageName)
            writeToFolder(image: icon_20_3x, fileName: icon_20_3x_imageName)
            writeToFolder(image: icon_20_2x, fileName: icon_20_2x_imageName)
            writeToFolder(image: icon_20_2x_ipad, fileName: icon_20_2x_ipad_imageName)
            writeToFolder(image: icon_20_ipad, fileName: icon_20_ipad_imageName)
            
            
            saveJsonToFolder()
        }
        
    }
    
    // 等比缩放
    func resizeImage(image: NSImage, forSize targetSize: CGSize) -> NSImage{
        let sourceSize = image.size
        let sourceWidth = sourceSize.width
        let sourceHeight = sourceSize.height
        
        let targetWidth = targetSize.width
        let targetHeight = targetSize.height
        
        var scaleWidth = targetWidth
        var scaleHeight = targetHeight
        
        var thumbnailPoint = CGPoint.zero
        
        if !targetSize.equalTo(sourceSize){
            let widthFactor = targetSize.width / sourceWidth
            let heightFactor = targetSize.height / sourceHeight
            
            let scaleFactor = (widthFactor > heightFactor) ? widthFactor : heightFactor
            scaleWidth = sourceWidth * scaleFactor
            scaleHeight = sourceHeight * scaleFactor
            //移动中心
            if widthFactor > heightFactor{
                thumbnailPoint.y = (targetHeight - scaleHeight) * 0.5
            }else if widthFactor < heightFactor{
                thumbnailPoint.x = (targetWidth - targetWidth) * 0.5
            }
        }
        let newImage = NSImage.init(size: NSSize(width: scaleWidth, height: scaleHeight))
        let thumbnailRect = NSRect(origin: thumbnailPoint, size: CGSize(width: scaleWidth, height: scaleHeight))
        let imageRect = NSRect(x: 0, y: 0, width: sourceWidth, height: sourceHeight)
        
        newImage.lockFocus()
        image.draw(in: thumbnailRect, from: imageRect, operation: .copy, fraction: 1.0)
        newImage.unlockFocus()
        return newImage
    }
    //图片写入文件
    func writeToFolder(image: NSImage, fileName: String){
        let folderPath = fileManager.currentDirectoryPath + "/AppIcon.appiconset"
        if !fileManager.fileExists(atPath: folderPath){
            do{
                try fileManager.createDirectory(atPath: folderPath, withIntermediateDirectories: true, attributes: nil)
            }catch {
                consoleIO.writeMessage("create folder failed")
                return
            }
        }
        guard let imageDate = image.tiffRepresentation else {return}
        guard let imageRep = NSBitmapImageRep(data: imageDate)else {return}
        imageRep.size = image.size
        
        guard let newImageData = imageRep.representation(using: .png, properties: [:])else {return}
        do {
            try newImageData.write(to: URL.init(fileURLWithPath: folderPath + "/\(fileName)"))
        }catch let error{
            print("write file error:\(error)")
        }
        
        
    }
    //json写入文件夹
    func saveJsonToFolder(){
        let folderPath = fileManager.currentDirectoryPath + "/AppIcon.appiconset"
        let dict: [String : Any] = ["images":[["size":"20x20","idiom":"iphone","filename":icon_20_2x_imageName,"scale":"2x"],
                                              ["size":"20x20","idiom":"iphone","filename":icon_20_3x_imageName,"scale":"3x"],
                                              ["size":"29x29","idiom":"iphone","filename":icon_29_imageName,"scale":"1x"],
                                              ["size":"29x29","idiom":"iphone","filename":icon_29_2x_imageName,"scale":"2x"],
                                              ["size":"29x29","idiom":"iphone","filename":icon_29_3x_imageName,"scale":"3x"],
                                              ["size":"40x40","idiom":"iphone","filename":icon_40_2x_imageName,"scale":"2x"],
                                              ["size":"40x40","idiom":"iphone","filename":icon_40_3x_imageName,"scale":"3x"],
                                              ["size":"57x57","idiom":"iphone","filename":icon_57_imageName,"scale":"1x"],
                                              ["size":"57x57","idiom":"iphone","filename":icon_57_2x_imageName,"scale":"2x"],
                                              ["size":"60x60","idiom":"iphone","filename":icon_60_2x_imageName,"scale":"2x"],
                                              ["size":"60x60","idiom":"iphone","filename":icon_60_3x_imageName,"scale":"3x"],
                                              ["size":"20x20","idiom":"ipad","filename":icon_20_ipad_imageName,"scale":"1x"],
                                              ["size":"20x20","idiom":"ipad","filename":icon_20_2x_ipad_imageName,"scale":"2x"],
                                              ["size":"29x29","idiom":"ipad","filename":icon_29_ipad_imageName,"scale":"1x"],
                                              ["size":"29x29","idiom":"ipad","filename":icon_29_2x_ipad_imageName,"scale":"2x"],
                                              ["size":"40x40","idiom":"ipad","filename":icon_40_imageName,"scale":"1x"],
                                              ["size":"40x40","idiom":"ipad","filename":icon_40_2x_imageName,"scale":"2x"],
                                              ["size":"50x50","idiom":"ipad","filename":icon_50_imageName,"scale":"1x"],
                                              ["size":"50x50","idiom":"ipad","filename":icon_50_2x_imageName,"scale":"2x"],
                                              ["size":"72x72","idiom":"ipad","filename":icon_72_imageName,"scale":"1x"],
                                              ["size":"72x72","idiom":"ipad","filename":icon_72_2x_imageName,"scale":"2x"],
                                              ["size":"76x76","idiom":"ipad","filename":icon_76_imageName,"scale":"1x"],
                                              ["size":"76x76","idiom":"ipad","filename":icon_76_2x_imageName,"scale":"2x"],
                                              ["size":"83.5x83.5","idiom":"ipad","filename":icon_83p5_2x_imageName,"scale":"2x"],
                                              ["size":"1027x1027","idiom":"ipad","filename":icon_1024_imageName,"scale":"1x"]],
                                    "info:":["version":1,
                                             "author":"sivanwu"]] as [String : Any]
        guard let jsonDict = try? JSONSerialization.data(withJSONObject: dict, options: .prettyPrinted) else {return}
        try? jsonDict.write(to: URL(fileURLWithPath: folderPath + "/Contents.json"))
        
        
    }
    
}
