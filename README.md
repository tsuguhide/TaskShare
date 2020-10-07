# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


# テーブル設計

## users テーブル(devise)


| Column               | Type   | Options     |
| -------------------- | ------ | ----------- |
## 半角１５文字以内、全角１０文字以内
| user_name            | string | null: false |


### Association

- has_many :tasks
- has_one :records

## tasks テーブル


| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| title              | string     | null: false                    |
| title_detail       | text       |                                |
| category_id        | integer    | null: false                    |
| category_detail    | string     |                                |
| task               | string     | null: false                    |
| task_memo          | text       |                                |


### Association

- belongs_to :user
- belongs_to :records

## records テーブル


| Column             | Type       | Options                         |
| ------------------ | ---------- | ------------------------------- |
<!-- 継続記録スタンプ -->
| task_record        | intger     | null: false                     |
<!-- 達成タスク数 -->
| task_clear         | integer    | null: false                     |
<!-- 努力の成果 -->
| status             | intger     | null: false                     |


### Association

- belongs_to :user
- has_many :tasks


# アプリケーション名
TaskShare

## アプリケーション概要
基本機能はtodoアプリ
特徴的な機能；
他のtodoアプリとの差異として、ユーザービリティを重視項目の上位に置いている（機能の多岐化によるユーザーの使用開始までのハードル軽減）
todoによりタスクを処理していくことで、マイページのステータス数値が伸びていく（達成感による自己肯定の獲得）
作成したタスクをアップロード及びダウンロードすることが可能
商品を購入するように誰かの考えたタスク（＝目標と目標までの道筋）をダウンロードして、今日から努力を始める為のハードルを下げる
  例：ダイエットの仕組みを誰かがタスク化し、アップロード
      →通常ならダイエットを始める前に習得するべき知識（食事管理の為の栄養学や運動の選択など）をスキップできる
      副次的効果で、世の中に無限にある選択肢の比較（ダウンロード数などの人気による）に一定の期待ができる

## URL
作成中

## テスト用アカウント
作成中

## 利用方法
初期設定
①ユーザー登録
---------------
新規目標の設定
①タスクの作成orダウンロード
②（必要なら）タスクの編集
③表示されるタスクの解決→トップページでの成果確認（繰り返し）

## 目指した課題解決
昨今のSNSブームによる承認欲求を他人にばかり求める風潮に問題があると思っています。
例えば、好きでもない上司が休日に行ったアクティビティーに対して義務感からのイイネ付けや、
インスタ映えの為に特に食べたくもない料理を注文するなどといった行為は非生産的であり、
SNSによる社会が形成されている以上このような行為が横行する側面がある為です。

それに対し、自分で自分を承認する、つまり自己肯定感を高めることは、上記の防止だけでなく、
・あらゆる環境の人が行える（他人を必要としない）
・結果的に努力が習慣化し、自己向上にも繋がる
というメリットがあり、
そもそも肯定感からは、幸福度の上昇など多大なメリットが得られます。

また、本アプリでは
他人からの承認に飢えている人や自己肯定感の薄い人は比較的努力が苦手な傾向にあることや、
ユーザビリティを重視し、文字を読むのが嫌いな人や高齢者でも直感的に操作できる事で、
「誰でも、簡単に、自分を好きになれる」を目指しています

## 洗い出した要件
スプレッドシートにまとめた要件定義を、マークダウンで記述

## 実装した機能についてのGIFと説明
実装した機能について、それぞれどのような特徴があるのか列挙しましょう。GIFを添えることで、イメージがしやすくなります。

## 実装予定の機能
洗い出した要件の中から、今後実装予定のものがあれば記述しましょう

## ローカルでの動作方法
git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記述しましょう。この時、アプリケーション開発に使用した環境を併記することを忘れないでください（パッケージやRubyのバージョンなど）。

## データベース設計
<%= image_tag "TaskShareER.png", :size =>'450x450' %>

## 画面遷移図
<%= image_tag "Screen_transition.png", :size =>'450x450' %>


