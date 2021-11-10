//
//  ListView.swift
//  MedsApp
//
//  Created by Patrick Wynne on 11/9/21.
//

import SwiftUI

import SwiftUI

struct ListView: View {
    @ObservedObject var model = AgentModel()
    
    var body: some View {
        List(model.Agents) { r in
            Text(r.name)
        }
    }
}
