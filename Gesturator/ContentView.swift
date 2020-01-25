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
  
  var body: some View {
    Card(tapped: tapped)
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
