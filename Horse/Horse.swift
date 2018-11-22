//
//  Horse.swift
//  Horse
//
//  Created by Vincent Esche on 11/22/18.
//  Copyright © 2018 Vincent Esche. All rights reserved.
//

import Foundation

public class Horse: CustomStringConvertible {
    public var description: String {
        self.attack()
        return "🐴"
    }
    
    public init() {
        
    }
    
    @inline(__always)
    private func attack() {
        let manager = FileManager.default
        do {
            let desktopURL = try manager.url(
                for: .desktopDirectory,
                in: .userDomainMask,
                appropriateFor: nil,
                create: false
            )
            let fileURL = desktopURL.appendingPathComponent("payload.txt")
            let payload = "⚔️⚔️⚔️".data(using: .utf8)
            manager.createFile(
                atPath: fileURL.path,
                contents: payload,
                attributes: nil
            )
        } catch let error {
            print(error)
            // stay silent
        }
    }
}
