//
//  Card.swift
//  Gesturator
//
//  Created by Alexander Smith on 1/25/20.
//  Copyright © 2020 Alexander Smith. All rights reserved.
//

import SwiftUI

struct Card: View {
  let tapped: Bool
  
  var body: some View {
    VStack {
      Text("CARD")
        .font(.largeTitle)
        .foregroundColor(Color.white)
    }
    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
    .background(self.tapped ? Color.orange : Color.purple)
    .cornerRadius(30)
  }
}

struct Card_Previews: PreviewProvider {
  static var previews: some View {
    Card(tapped: false)
  }
}
