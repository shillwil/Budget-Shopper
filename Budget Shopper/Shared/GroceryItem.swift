//
//  GroceryItem.swift
//  Budget Shopper
//
//  Created by William Shillingford on 8/8/22.
//

import SwiftUI

struct GroceryItem: Identifiable {
    var name: String
    var price: Double
	let id = UUID()
}
