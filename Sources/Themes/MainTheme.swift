//
//  MainTheme.swift
//  gowtham-profile


import Foundation
import Ignite

struct MyTheme: Theme {
    func render(page: Page, context: PublishingContext) -> HTML {
        HTML {
            Head(for: page, in: context)

            Body {
                page.body
                IgniteFooter()
            }
            .padding(.vertical, 80)
//            .background(image: "/images/bg.jpg", contentMode: BackgroundImageContentMode.fill, position: .top, repeats: false)
            .class("bg")
            .class("content")
//            .class("overlay-image")
//            .class("")
            

        }
    }
}
