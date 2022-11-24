//
//  UserDatabase.swift
//  TwitterNC1
//
//  Created by Aleksandr Shapovalov on 23/11/22.
//

import SwiftUI


struct UserTwitter: Identifiable {
    
    let id = UUID()
    var nickname: String
    var fullName: String
    
}


var user = UserTwitter(nickname: "lovelyCat", fullName: "George Martin")
                       
var user1 = UserTwitter(nickname: "iambanana", fullName: "MysteryBanana")

var user3 = UserTwitter(nickname: "whoislemonsquiiiiiz", fullName: "Doctor Octopus")

