//
//  Navigation.swift
//  gowtham-profile
//

import Foundation
import Ignite

struct Navigation: Component {
    func body(context: PublishingContext) -> [PageElement] {
        NavigationBar(logo: Image("/images/logo.svg", description: "Gowtham profile").frame(width: "min(60vw, 300px)", height: "100%")){
            Link("About", target: About())
            Dropdown("@gowtham") {
                Link("GitHub", target: About())
                Link("LinkedIn", target: "https://linkedin.com/in/richardpiazza")
                Link("Mastodon", target: "https://mastodon.social/@richardpiazza")
            }
        }
        .navigationItemAlignment(.trailing)
        .navigationBarStyle(.dark)
        .background(.firebrick)
        .position(.fixedTop)
    }
}

