//
//  FruitRow.swift
//  EmmaKadai16
//
//  Created by Emma
//

import SwiftUI

struct FruitRow: View {
    var fruit: Fruit

    private let checkMark: some View = Image(systemName: "checkmark").foregroundColor(.orange)
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Label{
                    Text(fruit.name)
                } icon: {
                    if fruit.isChecked {
                        checkMark
                    } else {
                        checkMark
                            .hidden()
                    }
                }
                Spacer()
            }
            .padding(.vertical, 10)
            .contentShape(Rectangle())
        }
    }
}

struct FruitRow_Previews: PreviewProvider {
    static var previews: some View {
        FruitRow(fruit: Fruit(name: "りんご", isChecked: true))
    }
}
