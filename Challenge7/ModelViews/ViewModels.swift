//
//  PizzaModel.swift
//  Challenge7
//
//  Created by Peter Mihók on 14/09/2021.
//

import Foundation

class ViewModels: ObservableObject {
    
    @Published var pizzas = [Pizza]()
    
    init() {
        
        self.pizzas = DataService.getLocalData()
        
    }
    
    func addPineapple() {
        for i in 0...pizzas.count-1 {
            pizzas[i].toppings[0] = "Pineapple"
        }
    }
    
}
