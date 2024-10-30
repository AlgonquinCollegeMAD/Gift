import Foundation

struct Gift: Identifiable {
  let id: UUID = UUID()
  var person: String
  var description: String
}
