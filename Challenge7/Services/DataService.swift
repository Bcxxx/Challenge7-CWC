//
//  DataService.swift
//  Challenge7
//
//  Created by Peter Mihók on 16/09/2021.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Pizza] {
        
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        guard pathString != nil else {
            return [Pizza]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            
            do {
                let pizzaData = try decoder.decode([Pizza].self, from: data)
                
                for i in pizzaData {
                    i.id = UUID()
                }
                
                return pizzaData
                
            }
            catch {
                //Error with parsing the json
                print(error)
            }
        }
        catch {
            //Error with getting data
            print(error)
        }
         
        return [Pizza]()
    }
    
}
