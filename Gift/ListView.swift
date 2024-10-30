//
//  ContentView.swift
//  Gift
//
//  Created by Vladimir Cezar on 2024-10-29.
//

import SwiftUI

struct Gift: Identifiable {
  let id: UUID = UUID()
  var person: String
  var description: String
}

struct ListView: View {
  @State var isPresented: Bool = false
  @State var name: String = ""
  @State var description: String = ""
  @ObservedObject var model = GiftViewModel()
  
    var body: some View {
      NavigationStack {
        VStack {
          List {
            ForEach(model.gifts) { gift in
              NavigationLink {
                GiftView(gift: gift)
              } label: {
                Text(gift.person)
                  .font(.headline)
                  .foregroundColor(.primary)
                  .padding()
              }
            }
            .onDelete { indexSet in
              deleteRows(at: indexSet)
            }
          }
        }
        .padding()
        .navigationTitle("Generous people I know")
        .toolbar {
          ToolbarItem {
            Button {
              isPresented.toggle()
            } label: {
              Image(systemName: "gift")
            }
          }
        }
        .sheet(isPresented: $isPresented) {
          TextField("Gift", text: $name)
            .padding()
          TextField("Description", text: $description)
            .padding()
          Button {
            model.gifts.append(.init(person: name, description: description))
          } label: {
            Text("Add")
          }
          .disabled(name.isEmpty || description.isEmpty)
        }
      }
    }
  
    func deleteRows(at offsets: IndexSet) {
      model.gifts.remove(atOffsets: offsets)
    }
}

#Preview {
  ListView()
}
