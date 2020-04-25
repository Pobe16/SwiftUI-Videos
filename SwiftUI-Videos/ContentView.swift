//
//  ContentView.swift
//  SwiftUI-Videos
//
//  Created by Mikolaj Lukasik on 25/04/2020.
//  Copyright © 2020 Mikolaj Lukasik. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var videos: [Video] = []
    var body: some View {
        NavigationView {
            List(videos) { (item: Video) in
                Image(item.imageName)
                .resizable()
                    .scaledToFit()
                    .frame(height: 90.0)
                    .cornerRadius(8)
                Spacer().frame(width: 16)
                VStack(alignment: .leading, spacing: 20.0) {
                    Text(item.title)
                        .fontWeight(.semibold)
                        .lineLimit(2)
                        .minimumScaleFactor(0.75)
                    Text(item.uploadDate)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                }
            }.navigationBarTitle("Sean's Videos")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(videos: Videos.topTwelve)
    }
}
