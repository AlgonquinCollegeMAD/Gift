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
  var model = GiftViewModel()
  
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
          }
        }
        .padding()
        .navigationTitle("Generous people I know")
      }
    }
}

#Preview {
  ListView()
}
