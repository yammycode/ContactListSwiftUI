//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Anton Saltykov on 01.11.2022.
//

import SwiftUI

struct ContentView: View {

    private let personList = Person.getPersons()

    var body: some View {
        TabView {
            ContactListView(personList: personList)
                .tabItem {
                    Label("Contacts", systemImage: "person.3")
                }
            ContactListDetailView(personList: personList)
                .tabItem {
                    Label("Numbers", systemImage: "phone")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
