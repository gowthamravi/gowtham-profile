//
//  HomePage.swift
//  gowtham-profile
//

import Foundation
import Ignite

struct HomePage: StaticPage {
    public var title: String = "Home"
    
    func body(context: PublishingContext) async -> [BlockElement] {
        Text("Gowtham")
            .font(.body)
        Text("Builds and ships engaging mobile apps for Apple devices, wielding Swift with expertise. Deeply versed in iOS best practices.")
        
        List {
            "Intro"
            "work"
            "recommendations"
            "about"
            "contact"
        }
    }
}
