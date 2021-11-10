//
//  DataService.swift
//  MedsApp
//
//  Created by Patrick Wynne on 11/9/21.
//

import Foundation

class DataService {
    
    
    static func getLocalData() -> [Agent] {
        
        let pathString = Bundle.main.path(forResource: "Agents", ofType: "json")
        
        guard pathString != nil else {
            return [Agent]()
            
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            
            
            do {
                
                let agentData = try decoder.decode([Agent].self, from: data)
                
                //                for r in agentData {
                //                    r.id = UUID()
                //
                //                }
                
                return agentData
            }
            
            catch {
                
                print(error)
            }
            
            
            
        }
        
        catch {
            
            print(error)
        }
        
        
        return[Agent]()
    }
    
}
