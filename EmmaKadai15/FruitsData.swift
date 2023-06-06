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

    /// この関数は新たにフルーツを追加し、成功したらtrueを返します
    func addNewFruitIfPossible(_ fruitName: String) -> Bool {
        // 文字列の両端から空白を削除
        let trimmedFruitName = fruitName.trimmingCharacters(in: .whitespaces)
        // 文字列が空ではない時だけフルーツを追加し、Bool値を返す
        if !trimmedFruitName.isEmpty {
            fruitsData.append(Fruit(name: trimmedFruitName))
            return true
        } else {
            return false
        }
    }
    /// この関数はタップされたフルーツのチェックマークを反転させ、成功したらtrueを返します
    func toggleIsCheckedIfPossible(_ fruit: Fruit) -> Bool {
        // いまタップされたのは何番目かをfirstIndex(where:)で見つける。見つけられなかったら終了
        // fb: idが一致するか調べる
        guard let index = fruitsData.firstIndex(where: { fruit.id == $0.id }) else {
            return false
        }
        //チェックマークを反転させる
        fruitsData[index].isChecked.toggle()
        return true
    }
}
