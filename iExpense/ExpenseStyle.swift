//
//  ExpenseStyle.swift
//  iExpense
//
//  Created by Adam Sayer on 31/7/2024.
//

import SwiftUI

extension View {
    func style(for item: ExpenseItem) -> some View {
        return self.foregroundStyle(item.amount <= 40 ? .green : item.amount >= 100 ? .red : .orange)
    }
}



//return self.foregroundStyle(item.amount <= 40 ? .green : item.amount >= 100 ? .red : .orange)
