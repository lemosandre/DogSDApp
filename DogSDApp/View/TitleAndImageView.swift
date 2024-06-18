//
//  TitleAndImageView.swift
//  DogSDApp
//
//  Created by Andre Lemos on 13/06/24.
//

import SwiftUI

struct TitleAndImageView: View {
    let model: TitleAndImageModel

    var body: some View {
        VStack {
            Text(model.title)
            AsyncImage(url: model.imageUrl) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding()
            } placeholder: {
                ProgressView()
            }
        }
    }
}

#Preview {
    TitleAndImageView(model: TitleAndImageModel(title: "Andre", imageUrl: URL(string: "")!))
}
