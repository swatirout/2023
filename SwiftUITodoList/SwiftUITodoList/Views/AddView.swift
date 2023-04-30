//
//  AddView.swift
//  SwiftUITodoList
//
//  Created by Swati Rout on 28/04/23.
//

import SwiftUI

struct AddView: View {
    @State var textflText: String = ""
    var body: some View {
        ScrollView {
            VStack{
                TextField("Type something here...", text: $textflText)
                    .padding(.horizontal)
                    .frame( height: 55)
                    .background(Color.gray)
                    .cornerRadius(10)
                Button(action: {
                    
                }, label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            
            }
            .padding(14)
            .navigationTitle("Add an item 🖊")

        }
        .navigationTitle("Add an item ")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()

        }
    }
}
