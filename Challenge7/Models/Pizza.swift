//
//  Pizza.swift
//  Challenge7
//
//  Created by Peter Mihók on 14/09/2021.
//

import Foundation

class Pizza: Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var toppings:[String]
    var image:String
    var ingredients:[String]
    var directions:[String]
    
}
