//
//  ContactListDetailView.swift
//  ContactListSwiftUI
//
//  Created by Anton Saltykov on 01.11.2022.
//

import SwiftUI

struct ContactListDetailView: View {
    let personList: [Person]

    var body: some View {
        NavigationStack {
            List(personList) { person in
                Section(header: Text(person.fullName)) {
                    Label(person.phone, systemImage: "phone")
                    Label(person.email, systemImage: "envelope")
                }

            }
            .navigationTitle("Contact Detail List")
        }
    }
}

struct ContactListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListDetailView(personList: Person.getPersons())
    }
}
