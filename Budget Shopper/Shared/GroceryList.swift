//
//  GroceryList.swift
//  Budget Shopper
//
//  Created by William Shillingford on 11/4/22.
//

import Foundation

class GroceryList {
	@Published var list: [GroceryItem] = []
	init(list: [GroceryItem]) {
		self.list = list
	}
}
