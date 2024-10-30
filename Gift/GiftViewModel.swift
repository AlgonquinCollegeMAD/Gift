import Foundation

class GiftViewModel: ObservableObject {
  @Published var gifts: [Gift] = []
  
  init() {
    gifts = [
      Gift(person: "Alice", description: "T-shirt"),
      Gift(person: "Bob", description: "Box of chocolates"),
      Gift(person: "Charlie", description: "Coffee mug"),
      Gift(person: "David", description: "Novel"),
      Gift(person: "Emma", description: "Perfume"),
      Gift(person: "Frank", description: "Gift card"),
      Gift(person: "Grace", description: "Laptop sleeve"),
      Gift(person: "Hank", description: "Water bottle"),
      Gift(person: "Ivy", description: "Planner"),
      Gift(person: "Jack", description: "Socks"),
      Gift(person: "Katie", description: "Personalized keychain"),
      Gift(person: "Leo", description: "Travel pillow"),
      Gift(person: "Mia", description: "Bluetooth speaker"),
      Gift(person: "Noah", description: "Notebook"),
      Gift(person: "Olivia", description: "Stationery set"),
      Gift(person: "Paul", description: "Pen set"),
      Gift(person: "Quinn", description: "Leather wallet"),
      Gift(person: "Rita", description: "Sunglasses"),
      Gift(person: "Sam", description: "Travel backpack"),
      Gift(person: "Tina", description: "Fragrance candle"),
      Gift(person: "Uma", description: "Beanie hat"),
      Gift(person: "Victor", description: "Photo frame"),
      Gift(person: "Wendy", description: "Yoga mat"),
      Gift(person: "Xander", description: "USB drive"),
      Gift(person: "Yara", description: "Wireless charger"),
      Gift(person: "Zane", description: "Portable fan"),
      Gift(person: "Alice", description: "Handmade soap"),
      Gift(person: "Bob", description: "Bottle opener"),
      Gift(person: "Charlie", description: "Phone case"),
      Gift(person: "David", description: "Puzzle set"),
      Gift(person: "Emma", description: "Wine bottle"),
      Gift(person: "Frank", description: "Candle holder"),
      Gift(person: "Grace", description: "Tote bag"),
      Gift(person: "Hank", description: "LED flashlight"),
      Gift(person: "Ivy", description: "Hand cream"),
      Gift(person: "Jack", description: "Charging cable"),
      Gift(person: "Katie", description: "Travel mug"),
      Gift(person: "Leo", description: "Tea sampler"),
      Gift(person: "Mia", description: "Painting kit"),
      Gift(person: "Noah", description: "Mini succulent"),
      Gift(person: "Olivia", description: "Face mask set"),
      Gift(person: "Paul", description: "Key organizer"),
      Gift(person: "Quinn", description: "Wine glass"),
      Gift(person: "Rita", description: "Blanket scarf"),
      Gift(person: "Sam", description: "Reusable straws"),
      Gift(person: "Tina", description: "Wallet"),
      Gift(person: "Uma", description: "Earrings"),
      Gift(person: "Victor", description: "Shoe polish kit"),
      Gift(person: "Wendy", description: "Outdoor blanket")
    ]
  }
  
}
