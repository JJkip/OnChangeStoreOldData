//
//  ContentView.swift
//  OnChangeStoreOldData
//
//  Created by Joseph Langat on 23/05/2023.
//

import SwiftUI

struct ContentView: View {
    @State var previousValue = 0
    @State private var currentValue = 0
    var body: some View {
        VStack(spacing: 20) {
            Text("Current value: \(currentValue)")
            Button("Increament current value") {
                currentValue += 1
            }
            .buttonStyle(.bordered)
            Text("Previous value: \(previousValue)")
        }
        .onChange(of: currentValue) {
            [currentValue] _ in previousValue = currentValue
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
