//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Yukari Yakumo on 17/07/2023.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            Image(landmark.imageName)
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title2)
                Text(landmark.description)
                    .font(.subheadline)
                    .lineLimit(1)
                    .foregroundColor(Color.gray)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: ModelData().landmarks[0])
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
