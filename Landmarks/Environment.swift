//
//  Environment.swift
//  Landmarks
//
//  Created by sharath on 19/2/2022.
//

import Foundation

public enum PlistKey {
    case Env
    
    func value() -> String {
        switch self {
        case .Env:
            return "env"
        }
    }
}
public struct Environment {
    
    fileprivate var infoDict: [String: Any]  {
        get {
            if let dict = Bundle.main.infoDictionary {
                return dict
            }else {
                fatalError("Plist file not found")
            }
        }
    }
    public func configuration(_ key: PlistKey) -> String {
        switch key {
        case .Env:
            return infoDict[PlistKey.Env.value()] as! String
        }
    }
}
