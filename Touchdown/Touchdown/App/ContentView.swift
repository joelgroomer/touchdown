//
//  ContentView.swift
//  Touchdown
//
//  Created by Joel Groomer on 1/1/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    var body: some View {
        VStack {
            FooterView()
                .padding(.horizontal)
        }
        .padding()
    }
}

// MARK: - PREVIEW
#Preview {
    ContentView()
}
