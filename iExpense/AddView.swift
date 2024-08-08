//
//  AddView.swift
//  iExpense
//
//  Created by Adam Sayer on 30/7/2024.
//

import SwiftUI

struct AddView: View {
    @Environment(\.dismiss) var dismiss
    @Environment(\.locale) var locale
    
    @State private var name = "New expense"
    @State private var type = "Business"
    
    @State private var amount = 0.0
    
    let localCurrency = Locale.current.currency?.identifier ?? "AUD"
    
    var expenses: Expenses
    
    var body: some View {
        Form {
            
            Picker("type", selection: $type) {
                ForEach(ExpenseTypes.expenseTypes, id: \.self) { type in
                    Text(type)
                }
            }
            
            TextField("Amount", value: $amount, format: .currency(code: localCurrency))
                .keyboardType(.decimalPad)
        }
        .navigationTitle($name)
        .toolbar {
            ToolbarItem(placement: .confirmationAction) {
                Button("Save") {
                    let item = ExpenseItem(name: name, type: type, amount: amount)
                    expenses.items.append(item)
                    dismiss()
                }
            }
            
            ToolbarItem(placement: .cancellationAction) {
                Button("Cancel", role: .cancel) {
                    dismiss()
                }
            }
        }
        .navigationBarBackButtonHidden()
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    AddView(expenses: Expenses())
}
