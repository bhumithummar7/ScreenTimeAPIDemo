//
//  ContentView.swift
//  ScreenTimeAPI
//
//  Created by Bhumi Thummar on 30/01/25.
//

import SwiftUI
import FamilyControls
struct ContentView: View {
    var authorizationCenter:AuthorizationCenter {
        return AuthorizationCenter.shared
    }
    
    var body: some View {
        ZStack{
            ShieldView()
        }.onAppear() {
            Task { @MainActor in
                let center = authorizationCenter
                do {
                    try await center.requestAuthorization(for: .individual)
                    let status = center.authorizationStatus
                    if status == .approved {
                        print("APPROVED")
                    } else {
                        print("NOT APPROVED")
                    }
                }
                catch {
                    print(error.localizedDescription)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
