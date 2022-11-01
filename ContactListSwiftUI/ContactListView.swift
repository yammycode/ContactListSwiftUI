//
//  ContactListView.swift
//  ContactListSwiftUI
//
//  Created by Anton Saltykov on 01.11.2022.
//

import SwiftUI

struct ContactListView: View {

    let personList: [Person]

    var body: some View {
        NavigationStack {
            List(personList) { person in
                NavigationLink {
                    ContactDetailView(person: person)
                } label: {
                    Text(person.fullName)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(personList: Person.getPersons())
    }
}
