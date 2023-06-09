//
//  FruitEditView.swift
//  EmmaKadai15
//
//  Created by Emma
//

import SwiftUI

struct FruitEditor: View {
    @Environment(\.dismiss) var dismiss
    @State var newFruitName: String = ""

    @EnvironmentObject var fruits: Fruits

    var body: some View {
        NavigationStack {
            HStack{
                Text("名前")
                    .padding(.trailing, 20)
                TextField("", text: $newFruitName)
                    .textFieldStyle(.roundedBorder)

            }.padding(50)
            Spacer()

            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Button("Cancel"){
                        dismiss()
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Button("Save"){
                        _ = fruits.addNewFruitIfPossible(newFruitName)
                        dismiss()
                    }
                }
            }
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarBackground(Color.teal.opacity(0.2), for: .navigationBar)
        }
    }
}

struct FruitEditor_Previews: PreviewProvider {
    static var previews: some View {
        FruitEditor()
            .environmentObject(Fruits())
    }
}
