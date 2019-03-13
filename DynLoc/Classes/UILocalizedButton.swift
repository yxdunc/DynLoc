//
//  UILocalizedButton.swift
//  testLocalization
//
//  Created by Robin Guignard-perret on 11/03/2019.
//  Copyright © 2019 Robin Guignard-perret. All rights reserved.
//

import Foundation
import UIKit

public class UILocalizedButton: UIButton, LocalizedProtocol {
    @IBInspectable public var localizationID: String? = nil

    public func updateLocalization() {
        self.setTitle(getLocalizedString(), for: .normal)
    }
    
    public func getLocalizedString() -> String? {
        guard let identifier = self.localizationID else {
            if let s_text = self.titleLabel?.text {
                return DynLocalization.localizeString(s_text)
            }
            return nil
        }
        return DynLocalization.localizeString(identifier)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        DynLocalization.registerDynamicLocalization(self)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        DynLocalization.registerDynamicLocalization(self)
    }
    
    deinit {
        DynLocalization.unregisterDynamicLocalization(self)
    }
}
