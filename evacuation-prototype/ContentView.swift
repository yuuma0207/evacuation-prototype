//
//  ContentView.swift
//  evacuation-prototype
//
//  Created by yuuma on 2024/12/14.
//

import SwiftUI

struct ContentView: View {

    var body: some View {

        NavigationView {

            List { // ⬅︎ リストでリンクアイテムを管理

                NavigationLink(destination: Text("🍊").font(.system(size: 200))) {

                    Text("オレンジ")
                        .font(.largeTitle)
                        .fontWeight(.bold)

                } // オレンジ

                NavigationLink(destination: Text("🍎").font(.system(size: 200))) {

                    Text("リンゴ")
                        .font(.largeTitle)
                        .fontWeight(.bold)

                } // リンゴ

            } // List ここまで
            .navigationTitle("フルーツを選ぶ")

        } // NavigationView ここまで
        .navigationViewStyle(.stack) // <- NavigatonViewの表示スタイルを指定
    } // body
} // View

#Preview {
    ContentView()
}
