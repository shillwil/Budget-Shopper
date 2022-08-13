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
//		NavigationLink {
//			<#code#>
//		} label: {
//			Image(systemName: "plus")
//				.foregroundColor(Color(uiColor: .label))
//		}
		Button {
			print("Add new Grocery Item Here")
		} label: {
			Image(systemName: "plus")
				.foregroundColor(Color(uiColor: .label))
		}
    }
	
	private var groceryListView: some View {
		List(0..<5) { item in
			Text("Hello, world!")
				.padding()
		}
		.navigationTitle("Grocery List")
		.toolbar { plusButton }
	}
	
	private var bottomTotalView: some View {
		VStack {
			HStack {
				Text("Total")
				
				Spacer()
				
				Text("$0.00")
			}
			.font(.title2).bold()
			.padding()
			
			finishButton
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
