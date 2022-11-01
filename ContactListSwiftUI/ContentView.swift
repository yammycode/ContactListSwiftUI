//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Anton Saltykov on 01.11.2022.
//

import SwiftUI

struct ContentView: View {

    private let PersonList: [Person] = Person.getPersons()

    var body: some View {
        TabView {
            ContactListView(personList: PersonList)
                .tabItem {
                    Label("Contacts", systemImage: "person.3")
                }
            ContactListDetailView(personList: PersonList)
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
