//
//  PostView.swift
//  Emory
//
//  Created by 鶴見駿 on 2024/11/27.
//

import SwiftUI

struct PostingView: View {
    @State var inputTitle = ""
    
    private let fontSizeOnText: CGFloat = 30
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                TextField("タイトル", text: $inputTitle)
                    .frame(width: 200, height: 50)
                    .font(.system(size: fontSizeOnText, weight: .bold))
//                    .textFieldStyle(.roundedBorder)
//                    .background(Color.gray.opacity(0.2))い
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray, lineWidth: 2)
                    )
                    .padding()
                
                Spacer()
            }
            
            RoundedRectangle(cornerRadius: 2)
                .stroke(lineWidth: 1)
                .frame(height: 50)
                .overlay(
                    Text("タグを選択")
                )
                .padding()
            
            Button(action: {
                
            }, label: {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 1.0)
                    .frame(height: 300)
                    .padding()
                    .foregroundColor(.black)
                    .overlay(
                        Image(systemName: "camera")
                    )
                    
            })
            
            Spacer()
            
            
        }
    }
}

#Preview {
    PostingView()
}
