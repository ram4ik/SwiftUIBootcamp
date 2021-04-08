//
//  DebuggingTools.swift
//  SwiftUIBootcamp
//
//  Created by Ramill Ibragimov on 08.04.2021.
//

import Foundation

@propertyWrapper
struct Versioned<Value> {
    private var currentValue: Value
    private(set) var history: [Value] = []
    
    init(wrappedValue: Value) {
        self.currentValue = wrappedValue
    }
    
    var wrappedValue: Value {
        get { return self.currentValue}
        
        set {
            history.append(currentValue)
            currentValue = newValue
        }
    }
    
    var projectedValue: Self {
        return self
    }
}
