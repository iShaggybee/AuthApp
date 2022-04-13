//
//  User.swift
//  AuthApp
//
//  Created by Kislov Vadim on 12.04.2022.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserInfo() -> User {
        User.init(
            login: "User",
            password: "Password",
            person: Person.init(
                name: "Vadim",
                surname: "Kislov",
                about: """
                Now I am a full stack developer at a company that develops complex SaaS products.I like the Apple products and I am going to change over to iOS, macOS app development to make a small contribution for these platforms.
                """,
                facts: [
                    "I`m 34",
                    "I`m from Rostov-on-Don",
                    "I have a beautiful daughter 👸",
                    "I have three big black 🐈‍⬛ and one small white 🐶"
                ],
                qualities: [
                    "take criticism easily and correct my mistakes",
                    "do not refuse to help",
                    "the ability to find the essence of the problem and solve it"
                ],
                note: """
                Since 2012, thoughts about iOS development have been haunting. For a number of reasons, it was not possible to do it fully. And now 10 years have passed ... During this time, the desire has not disappeared, but only intensified. I found the place to help me move in this direction, Thanks Swiftbook!
                """
            )
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let about: String
    let facts: [String]
    let qualities: [String]
    let note: String?
    
    var fullName: String {
        "\(name) \(surname)"
    }
}




