//
//  Messages.swift
//  NavigationControllerTask4
//
//  Created by Матвей Кашин on 12.07.2021.
//

import Foundation

public struct UserMessages {
    
     let cancelTitle = "Cancel"
     let singOutTitle = "Sing Out"
     let approveTitle = "Approve"
     let editTitle = "Edir"
     let deleteTitle = "Delete"
     let dismissTitle = "Dismiss"
     let destructive = "Destructive"
    
     struct SingOut {
        let title = "Sing out?"
        let message = "You can always access your content by signing back in"
    }
    
     struct ActionSheet {
        let title = "Action sheet title"
        let message = "Please, select an option"
    }
    
    struct TextField {
        let title = "TextField Title"
        let message = "TextField Message"
    }
}
