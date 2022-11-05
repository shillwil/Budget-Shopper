//
//  ContentView.swift
//  Shared
//
//  Created by William Shillingford on 6/30/22.
//

import SwiftUI

struct GroceryListView: View {
    @State var groceryList: GroceryList = GroceryList(list: [])
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                groceryListView
				
				Divider()
					.shadow(color: .black, radius: 5, x: 0, y: -5)
				
                bottomTotalView
            }
            .background(Color(uiColor: .secondarySystemBackground))
        }
    }
    
    private var plusButton: some View {
		NavigationLink {
			AddGroceryItemView(groceryList: $groceryList)
		} label: {
			Image(systemName: "plus")
				.foregroundColor(Color(uiColor: .label))
		}
    }
	
	private var groceryListView: some View {
		List(groceryList.list) { item in
			HStack {
				Text(item.name)
					.padding()
				
				Spacer()
				
				Text("$\(item.price)")
			}
		}
		.navigationTitle("Grocery List")
		.toolbar { plusButton }
	}
	
	private var bottomTotalView: some View {
		VStack {
			HStack {
				Group {
					Text("Total")
						.bold()
					
					Spacer()
					
					Text("$0.00")
						.bold()
				}
			}
			.font(.title2)
			.padding()
			
//			finishButton
		}
		.background(Color(uiColor: .secondarySystemGroupedBackground))
	}
	
	private var finishButton: some View {
		Button {
			print("Finish Grocery Trip")
		} label: {
			Text("Finish")
				.font(.title2).bold()
				.foregroundColor(Color(uiColor: .white))
				.padding()
				.padding(.horizontal, 100)
				.background(Color(uiColor: .systemBlue))
				.cornerRadius(8)
		}
		.padding()
	}
}

struct GroceryListView_Previews: PreviewProvider {
    static var previews: some View {
        GroceryListView()
    }
}
