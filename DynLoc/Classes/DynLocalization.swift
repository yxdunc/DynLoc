//
//  LocalizedProtocol.swift
//  testLocalization
//
//  Created by Robin Guignard-perret on 11/03/2019.
//  Copyright © 2019 Robin Guignard-perret. All rights reserved.
//

import Foundation
import Localize_Swift

public protocol LocalizedProtocol {
    func getLocalizedString() -> String?
    func updateLocalization()
    var localizationID: String? { get set }
}

public class DynLocalization {
    static var all_instances : Dictionary<ObjectIdentifier, LocalizedProtocol> = [:]
        
    public static func changeLocalization(language: String?) {
        Localize.setCurrentLanguage(language ?? Localize.currentLanguage())
        for x in all_instances {
            print("Localizing: \(x.value.getLocalizedString() ?? "-empty-")")
            x.value.updateLocalization()
        }
    }
    
    public static func localizeString(_ text: String) -> String? {
        return text.localized()
    }
    
    public static func registerDynamicLocalization(_ obj: LocalizedProtocol) {
        all_instances[ObjectIdentifier(obj as AnyObject)] = obj
    }
    
    public static func unregisterDynamicLocalization(_ obj: LocalizedProtocol) {
        all_instances[ObjectIdentifier(obj as AnyObject)] = nil
    }
}
