//
//  ImageTool.swift
//  MakeiOSAppIcon
//
//  Created by Wuxi on 2019/3/11.
//  Copyright © 2019年 wuxi. All rights reserved.
//

import Foundation
import AppKit

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
    
}
