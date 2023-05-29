//
//  FruitsStructView.swift
//  EmmaKadai15
//
//  Created by Emma
//

import SwiftUI

struct FruitsStructView: View {
    @State private var isPresented = false
    @State private var fruits = [
        Fruit(name: "りんご", isChecked: false),
        Fruit(name: "みかん", isChecked: true),
        Fruit(name: "バナナ", isChecked: false),
        Fruit(name: "パイナップル", isChecked: true),
    ]

    var body: some View {
        NavigationStack {
            
            List{
                ForEach(fruits.indices, id: \.self){ i in
                    // Structだったら単純にこれでできる。
                    FruitRow(fruit: fruits[i])
                    Spacer()
                        .contentShape(Rectangle())
                        .onTapGesture {
                            fruits[i].isChecked.toggle()
                        }
                }
            }
            .listStyle(.inset)
            .navigationTitle("課題15")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: {
                        isPresented = true
                    }){
                        Image(systemName: "plus")
                    }
                    .fullScreenCover(isPresented: $isPresented) {
                        FruitEditor()
                    }
                }

            }
        }
    }
}

struct FruitsStructView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsStructView()
    }
}
