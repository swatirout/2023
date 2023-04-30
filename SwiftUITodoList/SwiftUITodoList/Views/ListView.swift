//
//  ListView.swift
//  SwiftUITodoList
//
//  Created by Swati Rout on 28/04/23.
//

import SwiftUI

struct ListView: View {
    @State var items: [String] = [
    "Yoga","Shower","Breakfast"]
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("ToDo List 📝")
        .navigationBarItems(leading: EditButton(), trailing:
        NavigationLink("Add", destination: AddView())
        )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
    }
}

