# アプリケーション名  「LAQ」
 
「LAQ(ラク)」は、Let's Active Question(積極的に問題をしよう)の略称で、「楽(ラク)に覚えられる」という意味もあります。
 
 
# アプリケーション概要
 
&nbsp; 自分が覚えたいことに関する問題を作成・投稿することで、科学的に言われているベストなタイミングに復習する(問題を解く)ことで、知識を得るためのアプリケーションです。
 
# アプリケーションURL
 
https://laq-35586.herokuapp.com/
 
# テスト用アカウント
 
ベーシック認証  
ユーザー名 = 99camp&nbsp; パスワード = 9945

ログイン用  
メールアドレス = test@com&nbsp; パスワード = aaa111

# 利用方法
 
- 新規登録でアカウントを作成する(アカウントがある場合はログインする)
- 右下にある投稿ボタンをクリックすることでオリジナルの問題・解答を作成することができる
- ログインした状態でヘッダー部分のアカウント名をクリックすると、マイページとして過去に投稿してきた問題を閲覧することが出来る
- マイページの問題投稿一覧の各問題をクリックすると解答(復習)・編集・削除ができる
- 問題の解答フォームを送信すると、答え合わせができる
- 答え合わせフォームの下の復習日チェックボタンをクリックすると、その問題に対する復習日が表示されて、復習した日をチェックできる(チェックボックスのデータベースは実装できていないため、チェックしても保存はされません)
 
# 制作背景(意図)
 
&nbsp; プログラミングの学習中に、学習量が膨大なことからあまり覚えることが出来ないという悩みから発案しました。  
&nbsp; アプリの目的は、勉強はインプットした内容の復習(アウトプット)をすることで知識が身についていく、また、アクティブラーニングをするからこそ、自分の知識になりやすいところから、自分がアウトプットしたい内容を問題形式で作成し、投稿することで科学的に言われているベストな復習のタイミングにリマインダー機能が発動して、作成した問題を解答することが出来、それを続ければ記憶に定着していき、自分の使える知識に出来るということです。  
&nbsp; LAQ(アプリケーション)を通じて、勉強する人の役に立ちたいと思い、制作しています。

# DEMO

## トップページ
<img width="1680" alt="LAQ(トップ画面 上 )" src="https://user-images.githubusercontent.com/82803853/132623592-c0eaa1a7-2625-48d2-9cd2-ea7183bdb192.png">
<img width="1680" alt="LAQ(トップ画面 下 )" src="https://user-images.githubusercontent.com/82803853/132623634-b7d159d7-8409-4d6c-a298-778e3ab42dc9.png">
<img width="1680" alt="LAQ(ログイン後のトップ画面のヘッダー)" src="https://user-images.githubusercontent.com/82803853/132626091-ca782a6d-0852-4024-84b3-fcfa5494e369.png">
 
&nbsp; LAQのトップページです。ヘッダー部分にアプリケーションのロゴと新規登録・ログインボタンがあります。  
&nbsp; トップ画面ではアプリケーションについての説明をしています。「はじめる」と入力されているボタンをクリックすると新規登録画面に遷移します。ログイン後のトップ画面のヘッダーは、新規登録ボタンがログアウトボタン、ログインボタンがユーザー名(マイページに遷移する)ボタンに変更し、投稿数が追加で表示されます。

## 新規登録・ログイン画面
<img width="1680" alt="LAQ(新規登録画面)" src="https://user-images.githubusercontent.com/82803853/132625111-9b152c84-47f1-4128-9985-c65a062b4a18.png">
<img width="1680" alt="LAQ(ログイン画面)" src="https://user-images.githubusercontent.com/82803853/132625195-9cae905b-f12b-49c4-b8b8-b705023c7667.png">

&nbsp; 新規登録画面とログイン画面です。登録するニックネームとメールアドレス・パスワードを入力するとアカウントを作成できます。ログインはメールアドレスとパスワードを入力します。

## 問題投稿画面
<img width="1680" alt="LAQ(問題投稿画面)" src="https://user-images.githubusercontent.com/82803853/132626477-d0fd31b5-3139-4b09-97d0-470371a151b9.png">

&nbsp; トップ画面の右下にある「投稿する」ボタンをクリックすると問題投稿画面に遷移します。自分で考えた問題文・解答・説明文を作成し、「保存する」ボタンをクリックすることで、投稿内容が保存されます。問題文・解答は入力必須です。

## マイページ
https://user-images.githubusercontent.com/82803853/132629950-56685d45-c2f8-42d7-ae09-7be1677aecc2.mov

&nbsp; トップ画面、ヘッダー部分のユーザー名ボタンをクリックするとマイページに遷移できます。マイページでは自分が投稿した問題の一覧を確認でき、各問題をクリックすると、モーダル画面が表示され、問題文、解答・編集・削除ボタンが表示されます。

## 解答・復習日一覧画面
https://user-images.githubusercontent.com/82803853/132635393-d1fdcd03-f474-4579-b961-f13d138a2639.mov

&nbsp; マイページの各問題をクリックし、解答ボタンをクリックすると問題の解答ができます。解答フォームを入力し、送信すると答え合わせの画面に遷移します。答え合わせのフォームの下には復習日チェックボタンがあり、クリックすると復習日一覧ページに遷移します。復習した回数のチェックボタンにチェックすることで、復習日を管理できます。

## 問題編集・削除画面
https://user-images.githubusercontent.com/82803853/132636163-703a4277-3881-445c-b2f2-a40733b9ca03.mov

&nbsp; マイページの各問題をクリックし、編集ボタンをクリックすると問題の編集ができ、削除ボタンをクリックすると問題が削除されます。

# 実装予定

- 復習日にリマインダー機能を発動させて、登録したメールアドレスに問題を送信できるようにする
- 復習日一覧ページのチェックボックスのデータベースを作成し、復習した日を保存できるようにする
- タブ機能を追加し、問題によってタブ別に分けられるようにする
- マイページの問題投稿一覧で、次回の復習日欄を日が近い順に表示できるようにする

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
- has_many :answers

## answers テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| self_answer | string     | null: false                    |
| user        | references | null: false, foreign_key: true |
| question    | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :question