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
              model.gifts.append(.init(person: "V", description: "V"))
            } label: {
              Image(systemName: "gift")
            }
          }
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
