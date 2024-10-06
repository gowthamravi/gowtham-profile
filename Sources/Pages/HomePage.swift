//
//  HomePage.swift
//  gowtham-profile
//

import Foundation
import Ignite

struct HomePage: StaticPage {
    public var title: String = "Home"
    
    func body(context: PublishingContext) async -> [BlockElement] {
        Include("styles.html")
        profile
            .padding(.vertical, .extraLarge)
            .opacity(2)
        List {
            "Intro"
            "work"
            "recommendations"
            "about"
            "contact"
        }
       
    }
}

extension HomePage {
    
    var profile: some BlockElement {
        Group {
            introText
                .frame(maxWidth: 720, alignment: .leading)
            Spacer(size: 50)
        }
        
    }
    
    
    fileprivate var introText: some BlockElement {
        Group {
            Text("Hello, I'm Gowtham")
                .font(.title1)
                .foregroundStyle(.white)
                .margin(.bottom, .large)
            
            Text("iOS Developer")
                .foregroundStyle(.white)
                .font(.title5)
                .fontWeight(.regular)
                .margin(.bottom, .large)
            
            Text("I am a native iOS developer from India who loves crafting Swift code and designing delightful user interfaces using SwiftUI. Before discovering my passion for software development. I have a proven track record in automating workflows, enhancing build processes through CI/CD, and refining testing infrastructure to boost efficiency and reliability. Additionally, I’ve created automated tools like web crawlers for testing and developed data storage solutions to simplify operations.")
                .foregroundStyle(.white)
                .font(.lead)
                .fontWeight(.light)
        }
    }
}
