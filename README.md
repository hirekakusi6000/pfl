# kakikukekoapp
簡単にプロフィールを作成できるサービスです。  
TwitterやfacebookなどのSNSのリンクを、このアプリのプロフィールにお洒落にまとめることができ、
このアプリのリンク1つでシェアできるようになります。
![無題479_20210318210215](https://user-images.githubusercontent.com/76430700/111623489-cd0cb500-882d-11eb-8bf5-c7096f88278f.png)

## 🌐 App URL
https://kakikukekoapp.herokuapp.com/  
※利用規約とプライバシーポリシーは、ヘッダーにあるリンクからご覧頂けます。  
※モバイル版の使用率を考慮して、モバイル版のデザインを優先して作成しておりますので、スマホからでもご利用いただけます。

## 💻 開発環境
- Rails 6.1.1
- Ruby 2.7.2
- psql (PostgreSQL) 13.1
- HTML,CSS
- AWS S3
- Twitter API

## 💬 コンセプト
### プロフィール作成サイトを選んだ理由
現職ではVBA（マクロ作成言語）で業務で使用するマクロを作成しており、実際に使用する方へのヒアリングとコミュニケーションの重要性を知っております。   
プロフィール作成サービスは、身近に既存のサービスを利用している方が多く、ヒアリングしながら作成できるため、プロフィール作成サービスを選ぶことにいたしました。

### ユーザー満足度の高いアプリを作るために、ヒアリングと調査を繰り返しながら作成いたしました。  
- 既存のサービスではどのようにユーザーがサービスを利用しているのかを調査  
- 既存のサービスを利用しているユーザーに、欲しい機能をヒアリング
- 既存のサービスのユーザーの年齢層や性別を調査して、どのような機能を取り入れたら喜ばれるのかを予想して実装
- 既存のサービスを利用しているユーザーに私が作成したサービスを実際に使ってもらい、良かった点と気になった点、他のサービスと比較してどう思うか、どうしたらこのサービスを選んでもらえるかをヒアリング

### 🎨 自分なりのお洒落を実現できる
既存のサービスを利用しているユーザーの大半は１０～２０代の女性が多く、プロフィールの文章の書き方がお洒落だった為、デザインに拘りたいユーザーが多いように感じました。  
実際にユーザーにもヒアリングいたしましたが、やはり自分で色々とデザインをカスタマイズできるほうが良いそうです。  
しかし、既存のサービスの大半は元から用意されている２０種類ほどのデザインパターンからしか選べないことが多いため、ユーザーがあまり自由にプロフィールをカスタマイスすることが出来ません。   
そこで、ユーザーが細かいところまでプロフィールのデザインを選べて、自分なりのお洒落を実現できるサービスを作ろうと考えました。  

### 🔗 複数のSNSアカウントのリンクを登録できる
既存のサービスでは、TwitterなどのSNSのリンクやアカウントIDを登録すると、プロフィールにSNSのアイコンが表示されて、登録したSNSアカウントへのリンクボタンになります。    
しかし、各SNSのアカウントリンクを１つまでしか登録できないため、同じSNSで複数アカウントを持っている人や、好きなアイドルのアカウントのリンクなども一緒にのせたい人にはあまり優しくありません。  
実際に既存のサービスを利用しているユーザーには複数アカウントをのせたがっているユーザーが一定数おりました。  
そこで、無制限にTwitter、Instagram、Youtube、Facebook、Tiktokのアカウントリンクを登録できる機能を実装いたしました。  

![IMG_65431](https://user-images.githubusercontent.com/76430700/110473292-b7a6d500-8121-11eb-9804-8707115d02b4.png)

### 📄📄 複数のプロフィールを登録できる
既存のサービスの大半は、一つのアカウントにプロフィールを１つまでしか登録できません。  
しかし、既存のサービスを利用しているユーザーにヒアリングをしたところ、内容ごとにプロフィールを分けて使いたいユーザーもおりました。  
その為、既存のサービスとの差別化も兼ねて、一つのアカウントにサブプロフィールを複数登録できるサービスを作ろうと考えました。

## 🔍 機能一覧

### 基本機能
|  実装内容  |　追加説明  |
| ---- | ---- |
|  ユーザー登録<br>ログイン機能<br>アカウント情報設定機能  |  deviceで実装  |
|  Twitterアカウントでのログイン機能  |  Twitter APIで実装 gemはomniauthとomniauth-twitterを使用|
|  ゲストログイン機能  |    |
|  べネーション機能 |  kaminariで実装  |
|  検索機能 |  ransackで実装  |
|  管理者画面  |  activeadminで実装  |

### プロフィールカスタム機能 
|  実装内容  |　追加説明  |
| ---- | ---- |
|  アイコン・ヘッダー画像設定機能  |  AWS S3 + carrierwaveで実装  |
| 背景色設定機能  |  55色  |
| 文字の色の選択機能 |  55色  |
| 文字の種類の選択機能  |  10種類  |
| リンクの追加機能  |  無制限に追加可能。<br>リンクの形も様々な種類に設定可能。<br>ボタンの色やボタンの中のアイコンや文字の色もそれぞれ55色から選択可能。  |
| プロフィールの公開・非公開切り替え機能  |  非公開設定にするとユーザー一覧に表示されないようになります。<br>リンクを知っている人ではないとプロフィールを閲覧できない用に設定可能。  |

### その他の機能
|  実装内容 　|　追加説明  |
| ---- | ---- |
|  サブプロフィール追加機能  | 複数のサブプロフィールを追加可能。<br> デザインもメインのプロフィールと同じように設定ができ、<br>メインプロフィールにサブプロフィールのリンクを<br>表示するように設定可能。  |

![無題480_20210318212712](https://user-images.githubusercontent.com/76430700/111626369-4063f600-8831-11eb-8bc7-de4c87853631.png)
![無題480_20210318212941](https://user-images.githubusercontent.com/76430700/111626375-41952300-8831-11eb-8c7f-c8638e872219.png)

## ER図
![image_2021_3_14](https://user-images.githubusercontent.com/76430700/111061013-70836000-84e4-11eb-9015-5fc5c4dad9c4.png)


## [テーブル設計](https://docs.google.com/spreadsheets/d/13P-5MeE7ZZ1ZR2DLBxzS01MRNf-DVC8XF1ZidiUwb-0/edit#gid=0)

## 追加予定機能
- Twitterアカウントでログインした際にTwitterのアイコンも引き継がれるように設定
- 画像トリミング機能
- AWSデプロイ
- ご意見箱実装
