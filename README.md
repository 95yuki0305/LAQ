# アプリケーション名  「LAQ」
 
「LAQ」は、Let's Active Questionの略称です。
 
 
# アプリケーション概要
 
自分が覚えたいことに関する問題を積極的に作成し、科学的に言われているベストなタイミングに復習する(問題を解く)ことで、知識を得るためのアプリケーションです。
 
# アプリケーションURL
 
https://laq-35586.herokuapp.com/
 
# テスト用アカウント
 
ベーシック認証 username = 99camp  password = 9945

ログイン用
メールアドレス test@com パスワード aaa111

# 利用方法
 
- 新規登録でアカウントを作成する(アカウントがある場合はログインする)
- 右下にある投稿ボタンをクリックすることでオリジナルの問題・解答を作成することができる
- ヘッダー部分のアカウント名をクリックすると、マイページとして過去に投稿してきた問題を閲覧することが出来る
- マイページの各ファイルをクリックすると、問題の復習日一覧を表示する
- マイページの解答するボタンで解答することができる
- マイページの編集・削除ボタンで編集と削除ができる
 
# 目指した課題解決
 
LAQ(アプリケーション)を通じて、勉強する人に覚えたいことを記憶に定着するための役に立ちたい

# 洗い出した要件
 
スプレッドシートにまとめた要件定義を記述。
 
# Author
 
作成情報を列挙する
 
* 作成者
* 所属
* E-mail
 
# License
ライセンスを明示する
 
"hoge" is under [MIT license](https://en.wikipedia.org/wiki/MIT_License).
 
社内向けなら社外秘であることを明示してる
 
"hoge" is Confidential.

# テーブル設計

## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| nickname           | string  | null: false               |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |

### Association
- has_many :questions
- has_many :answers

## questions テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| quiz        | text       | null: false                    |
| response    | string     | null: false                    |
| description | text       |                                |
| user        | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_one :answer

## answers テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| self_answer | string     | null: false                    |
| user        | references | null: false, foreign_key: true |
| question    | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :question