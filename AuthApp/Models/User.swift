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
                surname: "Kislov"
            )
        )
    }
}

struct Person {
    let name: String
    let surname: String
}
