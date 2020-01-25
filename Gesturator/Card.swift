//
//  Card.swift
//  Gesturator
//
//  Created by Alexander Smith on 1/25/20.
//  Copyright © 2020 Alexander Smith. All rights reserved.
//

import SwiftUI
import Foundation

struct Card: View {
  let tapped: Bool
  @State private var scale: CGFloat = 1.0
  
  var body: some View {
    VStack {
      Image("yoda")
        .resizable()
        .scaleEffect(self.scale)
        .frame(width: 250, height: 250)
        .gesture(MagnificationGesture()
          .onChanged { value in
            self.scale = value.magnitude
          }
        )
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
