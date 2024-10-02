//
//  ContentLayout.swift
//  gowtham-profile
//
//  Created by Gowtham R on 02/10/24.
//

import Foundation
import Ignite


struct ContentLayout: ContentPage {
    func body(content: Content, context: PublishingContext) -> [any BlockElement] {
        Text(content.title)
        
        Text(content.description)
        
        Text(content.body)
    }
}
