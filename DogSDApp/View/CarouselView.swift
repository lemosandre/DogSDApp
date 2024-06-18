//
//  CarouselView.swift
//  DogSDApp
//
//  Created by Andre Lemos on 12/06/24.
//

import SwiftUI

struct CarouselView: View {
    
    let model: CarouselModel
    
    var body: some View {
        ScrollView(.horizontal){
            HStack {
                ForEach(model.imageUrls, id: \.self) { url in
                    AsyncImage(url: url) { image in
                        image.resizable().frame(width: 200, height: 200)
                    } placeholder: {
                        ProgressView()
                    }
                    
                }
            }
        }
        .padding()
    }
}

#Preview {
    CarouselView(model: CarouselModel(imageUrls: []))
}
