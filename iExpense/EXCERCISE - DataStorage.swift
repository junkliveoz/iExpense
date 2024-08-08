//
//  ContentView.swift
//  iExpense
//
//  Created by Adam Sayer on 30/7/2024.
//

//import SwiftUI
//
//struct User: Codable {
//    let firstName: String
//    let lastName: String
//}
//
//struct ContentView: View {
//    
//    @State private var user = User(firstName: "Taylor", lastName: "Swift")
//    
//    var body: some View {
//    
//        Button("Save User") {
//            let encoder = JSONEncoder()
//
//            if let data = try? encoder.encode(user) {
//                UserDefaults.standard.set(data, forKey: "UserData")
//            }
//        }
//    
//    
//    @AppStorage("tapCount") private var tapCount = 0
//
//    var body: some View {
//        Button("Tap Count: \(tapCount)"){
//            tapCount += 1
//        }
//        
//        
//    }
//}
//
//#Preview {
//    ContentView()
//}
