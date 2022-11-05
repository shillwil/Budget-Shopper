//
//  AddGroceryItemView.swift
//  Budget Shopper
//
//  Created by William Shillingford on 8/8/22.
//

import SwiftUI

struct AddGroceryItemView: View {
	@State var itemName: String = ""
	@State var itemPrice: String = ""
	@Binding var groceryList: GroceryList
    var body: some View {
        VStack {
            newItemTextField(placeholderTitle: "Item name", text: $itemName)
				.padding()
			
			newItemTextField(placeholderTitle: "Price", text: $itemPrice)
				.padding()
			
			saveButton
        }
		.navigationTitle("Add New Item")
		.padding()
    }
	
	var saveButton: some View {
		Button {
			saveItemToGroceryList()
		} label: {
			Text("Save")
		}
	}
	
	func newItemTextField(placeholderTitle: String, text: Binding<String>) -> some View {
		TextField(placeholderTitle, text: text)
			.padding(16)
			.overlay(
				RoundedRectangle(cornerRadius: 14)
					.stroke(Color(uiColor: .tertiaryLabel), lineWidth: 2)
			)
	}
	
	func saveItemToGroceryList() {
		guard let price = Double(itemPrice) else { return }
		let groceryItem = GroceryItem(name: itemName, price: price)
		
		groceryList.list.append(groceryItem)
	}
}

struct AddGroceryItemView_Previews: PreviewProvider {
    static var previews: some View {
		AddGroceryItemView(groceryList: .constant(GroceryList(list: [])))
    }
}
