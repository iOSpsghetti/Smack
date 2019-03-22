///  UserDataService.swift
//  Smack ... Udemy-6
//  https://www.udemy.com/devslopes-ios12/learn/v4/t/lecture/11450348?start=0
//
//  Created by Steve Zeller on 3/21/19.
//  Copyright © 2019 Capital. All rights reserved.


import Foundation

class UserDataService {
    
    static let instance = UserDataService()
    
    private(set) public var id = ""
    private(set) public var name = ""
    private(set) public var email = ""
    private(set) public var avatarName = ""
    private(set) public var avatarColor = ""

    // Since these are private sets we MUST implement updating them HERE
    func setUserData(id: String, name: String, email: String, avatarName: String, avatarColor: String) {
        self.id = id
        self.name = name
        self.email = email
        self.avatarName = avatarName
        self.avatarColor = avatarColor
    }
    
    func updateAvatarName(avatarName: String) {
        self.avatarName = avatarName
    }
    
}
