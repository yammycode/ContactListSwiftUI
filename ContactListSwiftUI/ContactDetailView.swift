//
//  ContactDetailView.swift
//  ContactListSwiftUI
//
//  Created by Anton Saltykov on 01.11.2022.
//

import SwiftUI

struct ContactDetailView: View {

    let person: Person

    var body: some View {
        List {
            HStack() {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .padding()
                Spacer()
            }

            Label(person.phone, systemImage: "phone")
            Label(person.email, systemImage: "envelope")
        }
        .navigationTitle(person.fullName)
    }
}

struct ContactDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailView(person: Person.getPersons().first!)
    }
}
