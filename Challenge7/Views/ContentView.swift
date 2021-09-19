//
//  ContentView.swift
//  Challenge7
//
//  Created by Peter Mihók on 14/09/2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = ViewModels()
    
    
    var body: some View {
        
        NavigationView {
            
            List(model.pizzas) { r in
                
                NavigationLink(
                    destination: PizzaDetailView(pizza: r),
                    label: {
                        HStack {
                            Image(r.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .clipped()
                                .cornerRadius(5)
                            Text(r.name)
                        }
                    })
            }.navigationBarTitle("Pizzas")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
