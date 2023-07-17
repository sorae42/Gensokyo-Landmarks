//
//  FavoriteBtn.swift
//  Landmarks
//
//  Created by Yukari Yakumo on 17/07/2023.
//

import SwiftUI

struct FavoriteBtn: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "heart.fill" : "heart")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? Color.red : Color.gray)
        }
    }
}

struct FavoriteBtn_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteBtn(isSet: .constant(true))
    }
}
