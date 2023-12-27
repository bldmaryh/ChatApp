//
//  TitleRow.swift
//  ChatAppDemo
//
//  Created by merih on 28.12.2023.
//

import SwiftUI

struct TitleRow: View {
    
    var imageURL = URL(string: "https://i.pinimg.com/736x/b3/3a/6b/b33a6b1309694293b744e98714ba3bec.jpg")
    var name = "Duru Aydın"
            
    
    var body: some View {
        HStack(spacing: 20, content: {
            AsyncImage(url: imageURL) { Image in
                Image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 60, alignment: .center)
                    .clipShape(Circle())
            } placeholder: {
                 ProgressView()
            }
            VStack(alignment: .leading, content: {
                Text(name)
                    .font(.title).bold()
                Text("Online")
                    .font(.caption)
                    .foregroundStyle(.gray)
            })
            .frame(maxWidth: .infinity, alignment: .leading)
            Image(systemName: "phone.fill")
                .foregroundStyle(.gray)
                .padding(10)
                .background(.white)
                .clipShape(Circle())
        })
        .padding()
    }
}

#Preview {
    TitleRow()
        .background(Color("Peach"))
}
