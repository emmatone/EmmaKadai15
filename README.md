# 課題15 項目をタップするとチェックが切り替わる
## Overview
<ul>
<li>4つのフルーツ名がリスト形式で表示される。</li>
<li>フルーツ名にはチェックマークが付いているものと付いていないものがある</li>
<li>フルーツ名を追加する機能を追加（課題14）</li>
<li>フルーツ名をタップするとチェックマークが切り替わる機能を追加（課題15）</li>
</ul>
<img src= "Kadai15.gif" width="300" alt="Preview image" />
<h2>Memo</h2>
<ul>
<li>SwiftUI</li>
<li>List</li>
<li>Label</li>
<li>Identifiable, Equatable</li>
<li>ObservableObject/EnvironmentObject</li>
<li>@Environment</li>
<li>gurad ket</li>
<li>未入力や、空白スペースのときは追加されないようにした。.trimmingCharacters(in: .whitespaces)</li>
<li>配列の要素を検索してインデックスを取得するため、<del>.firstIndex(of:)</del>からidで検索するためfirstIndex(where:)に変更。</li>

<li>.contentShape, .onTapGesture</li>
</ul>

