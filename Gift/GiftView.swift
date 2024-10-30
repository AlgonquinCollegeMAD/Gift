import SwiftUI

struct GiftView: View {
  var gift: Gift
  var body: some View {
    Text(gift.person)
    Text(gift.description)
  }
}
