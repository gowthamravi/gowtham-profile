//
//  About.swift
//  gowtham-profile
//
//  Created by Gowtham R on 02/10/24.
//
import Foundation
import Ignite

struct About: StaticPage {
    var title: String = "About"
    func body(context: PublishingContext) -> [any BlockElement] {
        
        Section {
            Text("2022-Current")
                .width(2)
            
            Section {
                Text("Nice Healthcare")
                    .font(.title5)
                    .width(12)
                
                Text("Staff Software Engineer in charge of all things iOS, macOS & Android.")
                    .font(.body)
                    .width(12)
            }
            .width(10)
        }
        
    }
}
