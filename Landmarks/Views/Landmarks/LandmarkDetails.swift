//
//  LandmarkDetails.swift
//  Landmarks
//
//  Created by Yukari Yakumo on 17/07/2023.
//

import SwiftUI

struct LandmarkDetails: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        ScrollView {
            Image(landmark.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                
            VStack(alignment: .leading) {
                
                Text(landmark.name)
                    .font(.title)
                    .bold()
                
                Text(landmark.subname)
                    .font(.subheadline)
                
                Divider()
                    .frame(height: 24)
                
                Text("About")
                    .font(.title2)
                    .bold()
                
                Spacer()
                Text(landmark.description)
                
                Spacer()
                Link(destination: URL(string: "https://en.touhouwiki.net/wiki/" + landmark.wikiEntry)!) {
                    Image(systemName: "book.fill")
                    Text("See Wiki Entry")
                }
                
                Spacer()
            }
            .padding()
        }
        .ignoresSafeArea()
        .navigationBarTitleDisplayMode(.automatic)
    }
}

struct LandmarkDetails_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetails(landmark: ModelData().landmarks[0])
            .environmentObject(ModelData())
    }
}
