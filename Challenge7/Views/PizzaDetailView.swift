//
//  PizzaDetailView.swift
//  Challenge7
//
//  Created by Peter Mihók on 17/09/2021.
//

import SwiftUI

struct PizzaDetailView: View {
    
    var pizza:Pizza
    
    var body: some View {
        
        ScrollView {
            
            VStack {
                //MARK: Pizza Image
                Image(pizza.image)
                    .resizable()
                    .scaledToFill()
                    .padding([.bottom, .top], 5)
                VStack(alignment: .leading) {
                    //MARK: Pizza Ingredients
                    Text("Ingredients")
                        .font(.headline)
                    ForEach(pizza.ingredients, id: \.self) { item in
                        Text("- " + item)
                            .padding(.bottom, 5)
                    }
                }
                
                Divider()
                
                VStack(alignment: .leading) {
                    //MARK: Pizza Directions
                    Text("Directions")
                        .font(.headline)
                    ForEach(0...pizza.directions.count-1, id: \.self) { index in
                        Text(String(index) + ". " + pizza.directions[index])
                            .padding(.bottom, 5)
                    }
                }
                .padding(.horizontal)
            }
            .padding(.horizontal)
        }.navigationBarTitle(pizza.name)
    }
}

struct PizzaDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = ViewModels()
        
        PizzaDetailView(pizza: model.pizzas[0])
    }
}
