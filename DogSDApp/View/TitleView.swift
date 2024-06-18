//
//  TitleView.swift
//  DogSDApp
//
//  Created by Andre Lemos on 18/06/24.
//

import SwiftUI

struct TitleView: View {
    let model: TitleModel

    var body: some View {
        VStack {
            Text(model.title)
        }
    }
}

#Preview {
    TitleView(model: TitleModel(title: "Andre"))
}
