//
//  ContentView.swift
//  iExpense
//
//  Created by Adam Sayer on 30/7/2024.
//

import SwiftUI

class ExpenseTypes {
    static let expenseTypes = ["Business", "Personal"]
}

class UserPreferences {
    let localCurrency = Locale.current.currency?.identifier ?? "AUD"
}

struct ContentView: View {
    @Environment(\.locale) var locale
    
    @State private var expenses = Expenses()
    
    @State private var expenseFilter = "Business"
    
    let localCurrency = Locale.current.currency?.identifier ?? "AUD"
    
    
    var body: some View {
        NavigationStack {
            VStack{
                List {
                    Picker("Expense Type", selection: $expenseFilter) {
                        ForEach(ExpenseTypes.expenseTypes, id: \.self) { type in
                            Text(type)
                        }
                    }
                    .pickerStyle(.segmented)
                    ForEach($expenses.items) { $item in
                        if item.type == expenseFilter {
                            HStack{
                                VStack(alignment: .leading) {
                                    Text(item.name)
                                        .font(.headline)
                                    
                                    Text(item.type)
                                }
                                
                                Spacer()
                                
                                Text(item.amount, format: .currency(code: localCurrency))
                                    .style(for: item)
                            }
                        }
                    }
                    .onDelete(perform: removeItems)
                }
                .navigationTitle("iExpense")
                .toolbar {
                    NavigationLink {
                        AddView(expenses: expenses)
                    } label: {
                        Label("Add Expense", systemImage: "plus")
                    }
                }
            }
        }
    }
    
    func removeItems(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
}

#Preview {
    ContentView()
}
