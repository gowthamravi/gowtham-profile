//
//  Site.swift
//  gowtham-profile
//

import Foundation
import Ignite

@main
struct ProfileSite {
    static func main() async {
        let site = MySite()
        
        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct MySite: Site {
    var name = "Gowtham Profile"
    var url = URL(string: "https://richardpiazza.com")!
    var builtInIconsEnabled = true
    var author = "Gowtham"
    var syntaxHighlighters = [SyntaxHighlighter.swift, .python, .ruby]
    var homePage = HomePage()
    var theme = MyTheme()
    
    var pages: [any StaticPage] = [
        About()
    ]
    
    var layouts: [any ContentPage] = [
        ContentLayout()
    ]
}
