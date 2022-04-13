//
//  User.swift
//  AuthApp
//
//  Created by Kislov Vadim on 12.04.2022.
//

class User {
    var login: String
    var password: String
    let person: Person
    
    init(login: String, password: String, person: Person) {
        self.login = login
        self.password = password
        self.person = person
    }
    
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
                Since 2012, thoughts about iOS development have haunted me. For a number of reasons, the realization of the desire was delayed. And now 10 years have passed ... During this time, the desire has not disappeared, but only intensified. I found a place to help me move in this direction, thanks to Swiftbook!
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




