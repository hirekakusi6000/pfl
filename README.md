# kakikukeko-app

## 🌐 App URL

https://kakikukeko-pfl.herokuapp.com/

## 💻 開発環境

- Rails 6.1.1
- Ruby 2.7.2
- psql (PostgreSQL) 13.1
- HTML,CSS

## サービス概要

簡単にプロフィールを作成できるサービスです。
TwitterやfacebookなどのSNSのリンクを、このアプリのプロフィールにお洒落にまとめることができ、
このアプリのリンク1つでシェアできるようになります。

## 💬 コンセプト

ユーザー満足度の高いアプリを作りたいと思い、以下の点を行いながら作成いたしました。  
- 既存のサービスではどのようにユーザーがサービスを利用しているのかを調査  
- 既存のサービスを利用しているユーザーに、欲しい機能をヒアリング
- 既存のサービスのユーザーの年齢層や性別をチェックして、どのような機能を取り入れたら喜ばれるのかを予想して実装
- 既存のサービスを利用しているユーザーに私が作成したサービスを実際に使ってもらい、良かった点と気になった点、他のサービスと比較してどう思うか、どうしたらこのサービスを選んでもらえるかをヒアリング

既存のサービスを利用しているユーザーの大半は１０～２０代の女性が多く、プロフィールの文章の書き方もオリジナリティのあるお洒落な書き方をされている方が多く、デザインに拘りたいユーザーが多いように感じました。実際にユーザーにもヒアリングいたしましたが、やはり自分で色々とデザインをカスタマイズできるほうが良いとのことでした。  
しかし、既存のサービスの大半は元から用意されている２０種類ほどのデザインパターンからしか選べないことが多いため、ユーザーがあまり自由にプロフィールをカスタマイスすることが出来ません。  
そこで、ユーザーが細かいところまでプロフィールのデザインを選べて、自分なりのお洒落を実現できるサービスを作ろうと考えました。  

又、既存のサービスでは、TwitterなどのSNSのリンクやアカウントIDを登録するとプロフィールに登録したTwitterのアイコンが下記の画像のように表示されて、登録したSNSアカウントへのリンクボタンになります。  
しかし、各SNSのアカウントリンクを１つまでしか登録できないため、同じSNSで複数アカウントを持っている人や、好きなアイドルのアカウントのリンクなども一緒にのせたい人にはあまり優しくありません。  
そこで、無制限にTwitter、Instagram、Youtbe、Facebook、Tiktokのアカウントを登録できる機能を実装いたしました。  

![IMG_65431](https://user-images.githubusercontent.com/76430700/110473292-b7a6d500-8121-11eb-9804-8707115d02b4.png)

## プロフィール作成サイトを選んだ理由

身近に既存のサービスを利用している方が多いためヒアリングしながら作成できる点と、有名な既存のサービスがサービス終了するため、そこから流出するユーザーに次に使用するサイトの選択肢の一つとして、興味を持ってもらえるのではないかと思ったからです。  


## 🔍 機能一覧

- ユーザー登録、ログイン機能、アカウント情報設定機能（device）
- ユーザー検索機能（ransack）
- べネーション機能（kaminari）
- 画像投稿機能（carrierwave）
- 管理者画面（activeadmin）
- プロフィール背景色選択機能（55色から選べます）
- 
 ![IMG_6573](https://user-images.githubusercontent.com/76430700/110329971-97631180-8060-11eb-9cbc-5c3631e409d4.png)
 
- プロフィールの文字の色を選択できる機能（55色から選べます）
- プロフィールの文字の種類を選択できる機能（10種類のフォントから選べます）
- 公開設定機能（非公開設定にするとユーザー一覧に表示されないようになり、リンクを知っている人ではないとプロフィールを閲覧できない用に設定できます）
- プロフィールにSNS等のリンクを無制限に追加できます。リンクのデザインも様々な種類に設定ができ、ボタンの色やボタンの中のアイコンや文字の色も55色から自由に選択できます。
![無題478_20210308224303](https://user-images.githubusercontent.com/76430700/110329607-2e7b9980-8060-11eb-8e0e-3a22e334570b.png)
![無題478_20210308231559](https://user-images.githubusercontent.com/76430700/110333074-83211380-8064-11eb-868f-f482d056c2ac.png)

## 良かった点

実際に既存のサービスを利用しているユーザーに私の作ったサービスを利用してもらったところ、デザインが自分なりにカスタマイズ点が気に入ってもらえ、特にフォントの種類まで設定できる部分には大変喜んでもらうことができました。  
又、UIも直感的な分かりやすさを意識して設計したため、何の説明もなしにサービスを使ってもらうことができました。  

## 反省点

既存のサービスのうちの一つにも、デザインのカスタマイズ性に優れているプロフィール作成サービスがありました。例え同じ機能のサービス同士でも元から利用者が多く流行っている方にユーザーが流れてしまう傾向があるように感じたため、選んでもらう大きな理由が必要になります。  

私の作成したプロフィール作成サービスではフォントの種類を選べたり、SNSのリンクを無制限に追加できる機能等、どの既存のサービスにもない独自の機能はありますが、それだけではわざわざ流行っていない方を選ぶ大きな理由にはならなかったかと感じています。  

大きな理由というのは、似たようなサービスだが細かい部分の機能で少し勝っている というよりも、差別化を図り全く違った新しい形のプロフィール作成サービスだと思っています。  

## 今後について
