//
//  ContentView.swift
//  Gesturator
//
//  Created by Alexander Smith on 1/25/20.
//  Copyright © 2020 Alexander Smith. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @State private var tapped: Bool = false
  @State private var cardDragState = CGSize.zero
  
  var body: some View {
    Card(tapped: tapped)
      .offset(y: self.cardDragState.height)
      .gesture(DragGesture()
        .onChanged { value in
          self.cardDragState = value.translation
        }
        .onEnded { value in
          self.cardDragState = CGSize.zero
        }
      )
      .gesture(TapGesture(count: 1)
        .onEnded({ () in
          self.tapped.toggle()
        })
      )
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
