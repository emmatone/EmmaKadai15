//
//  ContentView.swift
//  EmmaKadai15
//
//  Created by Emma
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var fruits: Fruits
    @State var isPresented: Bool = false
    private let subTitle: some View = Text("項目をタップするとチェックが切り替わる")
        .font(.headline)
        .padding(.bottom, 15)
        .padding(.horizontal, 30)
        .frame(maxWidth: .infinity)
        .background(.teal.opacity(0.2))

    var body: some View {
        NavigationStack {

            subTitle

            List(fruits.fruitsData){ fruit in
                FruitRow(fruit: fruit)
                    .onTapGesture {
                        _ = fruits.toggleIsCheckedIfPossible(fruit)
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Fruits())
    }
}
