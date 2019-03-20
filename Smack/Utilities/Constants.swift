//  Constants.swift
//  Smack ... Udemy-6
//
//  Created by Steve Zeller on 3/17/19.
//  Copyright © 2019 Capital. All rights reserved.

// Users ...
// Zman - zman@zmail.com - zman987
// Babs - babs@zmail.com - barby69
// Stuart - stu@zmail.com - stuey44
// Shaniqua - sha@zmail.com - donka00

import Foundation

// typealias = Renaming a Type (i.e. setting a custom type from an existing one)
// example ...
typealias Z = String
let xyz: Z = "zzz"

// Here we are customizing type "CompletionHandler" as a Closure
typealias CompletionHandler = (_ Success: Bool) -> ()

// URL Constants
let BASE_URL = "https://chatboxsz.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"


// Segue Iedentifiers ...
let SEGUE_LOGIN = "segueLogin"
let SEGUE_CREATE_ACCOUNT = "segue_Create_Account"
let SEGUE_UNWIND_TO_CHANNEL = "segue_UnwindToChannel"


// UserDefaults (persisted)
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"


