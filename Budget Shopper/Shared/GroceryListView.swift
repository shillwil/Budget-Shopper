//
//  ContentView.swift
//  Shared
//
//  Created by William Shillingford on 6/30/22.
//

import SwiftUI

struct GroceryListView: View {
    @State var groceryItems: [GroceryItem] = []
    var body: some View {
        NavigationView {
            List(0..<5) { item in
                Text("Hello, world!")
                    .padding()
            }
            .navigationTitle("Grocery List")
            .toolbar { plusButton }
        }
    }
    
    private var plusButton: some View {
        Button {
            print("Add new Grocery Item Here")
        } label: {
            Image(systemName: "plus")
                .foregroundColor(Color(uiColor: .label))
        }

    }
}

struct GroceryListView_Previews: PreviewProvider {
    static var previews: some View {
        GroceryListView()
    }
}
