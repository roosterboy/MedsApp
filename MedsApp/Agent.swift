//
//  Agent.swift
//  MedsApp
//
//  Created by Patrick Wynne on 11/9/21.
//

import Foundation

class AgentModel: ObservableObject {
    
    @Published var Agents = [Agent]()
    
    init() {
        
        self.Agents = DataService.getLocalData()
    }
}

class Agent: Identifiable, Decodable {
    let id = UUID()
    var name: String
    var type: String
    var description: String?
    var treatments: [String]
    var dosageForm: [String]
    var weightBasedDose: [String]
    var administration: [String]
}
