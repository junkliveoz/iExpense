////
////  ContentView.swift
////  iExpense
////
////  Created by Adam Sayer on 30/7/2024.
////
//
//import Observation
//import SwiftUI
//
//struct SecondView: View {
//    @Environment(\.dismiss) var dismiss
//    let name: String
//    
//    var body: some View {
//        Button("Dismiss") {
//            dismiss()
//        }
//    }
//}
//
//struct ContentView: View {
//    
//    @State private var showingSheet = false
//    
//    var body: some View {
//        Button("Show Sheet") {
//            showingSheet.toggle()
//        }
//        .sheet(isPresented: $showingSheet) {
//            SecondView(name: "Adam")
//        }
//    }
//}
//
//#Preview {
//    ContentView()
//}
