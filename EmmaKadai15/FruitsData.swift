//
//  FruitsData.swift
//  EmmaKadai15
//
//  Created by Emma
//

import Foundation

struct Fruit: Identifiable, Equatable {
    let id = UUID()
    var name: String
    var isChecked: Bool = false
}

class Fruits: ObservableObject {
    @Published var fruitsData = [
        Fruit(name: "りんご", isChecked: false),
        Fruit(name: "みかん", isChecked: true),
        Fruit(name: "バナナ", isChecked: false),
        Fruit(name: "パイナップル", isChecked: true)
    ]

    func addNewFruitIfPossible(_ fruitName: String) -> Bool {
        // 文字列の両端から空白を削除
        let trimediFruitName = fruitName.trimmingCharacters(in: .whitespaces)
        // 文字列が空ではない時だけフルーツを追加し、Bool値を返す
        if !trimediFruitName.isEmpty {
            fruitsData.append(Fruit(name: trimediFruitName))
            return true
        } else {
            return false
        }
    }

    func toggleIsCheckedIfPossible(_ fruit: Fruit) -> Bool {
        // いまタップされたのは何番目かを見つける。見つけられなかったら終了
        guard let index = fruitsData.firstIndex(of: fruit) else {
            return false
        }
        //チェックマークを反転させる
        fruitsData[index].isChecked.toggle()
        return true
    }
}
