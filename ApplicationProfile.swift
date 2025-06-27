//
//  ApplicationProfile.swift
//  ScreenTimeAPI
//
//  Created by Bhumi Thummar on 30/01/25.
//

import Foundation
import ManagedSettings

struct ApplicationProfile: Codable, Hashable {
    let id: UUID
    let applicationToken: ApplicationToken
    
    init(id: UUID = UUID(), applicationToken: ApplicationToken) {
        self.applicationToken = applicationToken
        self.id = id
    }
}
