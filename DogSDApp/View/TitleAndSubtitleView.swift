//
//  TitleAndSubtitleView.swift
//  DogSDApp
//
//  Created by Andre Lemos on 12/06/24.
//

import SwiftUI

struct TitleAndSubtitleView: View {
    let model: TitleAndSubtitleModel

    var body: some View {
        VStack {
            Text(model.title)
                .font(.title)
            Text(model.subTitle)
                .font(.subheadline)
        }
        .padding()
    }
}

#Preview {
    TitleAndSubtitleView(model: TitleAndSubtitleModel(title: "Andre", subTitle: "testing"))
}
