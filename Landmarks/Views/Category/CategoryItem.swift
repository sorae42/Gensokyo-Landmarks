//
//  CategoryItem.swift
//  Landmarks
//
//  Created by Yukari Yakumo on 17/07/2023.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark

    var body: some View {
        VStack(alignment: .leading) {
            Image(landmark.imageName)
                .resizable()
                .frame(width: 142, height: 142)
                .aspectRatio(contentMode: .fill)
                .cornerRadius(5)
            
            Text(landmark.name)
                .font(.caption)
                .foregroundColor(.primary)
        }
        .padding(6)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(landmark: ModelData().landmarks[0])
    }
}
