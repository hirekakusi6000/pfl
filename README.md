## kakikukeko-app

## URL

https://kakikukeko-pfl.herokuapp.com/

## 開発環境

- Rails 6.1.1
- ruby 2.7.2
- psql (PostgreSQL) 13.1
- HTML,CSS

## サービス概要

簡単にプロフィールを作成できるサービスです。
TwitterやfacebookなどのSNSのリンクを、このアプリのプロフィールにお洒落にまとめることができ、
このアプリのリンク1つでシェアできるようになります。

## コンセプト

ユーザー満足度の高いアプリを作りたいと思い、以下の点をを行いながら作成いたしました。
- 既存のサービスではどのようにユーザーがサービスを使用しているのかを調査
- 既存のサービスを使用しているユーザーに、欲しい機能をヒアリング
- 既存のサービスのユーザーの年齢層や性別をチェックして、どのような機能を取り入れたら喜ばれるのかを予想して実装
- 実際に知り合いに使用してもらい、良かった点と気になった点をヒアリング

## プロフィール作成サイトを作ろうと思った理由

プロフィール作成サイトを選んだ理由は、身近に既存のサービスを使っている人が多いためヒアリングしながら作成できる点と、有名な既存のサービスがサービス終了するため、そこから流出するユーザーに次に使用するサイトとして興味を持ってもらえるのではと思ったからです。

## 機能一覧

- ユーザー登録、ログイン機能、アカウント情報設定機能（device）
- ユーザー検索機能（ransack）
- べネーション機能（kaminari）
- 画像投稿機能（carrierwave）
- 管理者画面（activeadmin）
- プロフィール背景色選択機能（55色から選べます）
 ![IMG_6573](https://user-images.githubusercontent.com/76430700/110329971-97631180-8060-11eb-9cbc-5c3631e409d4.png)
- プロフィールの文字の色を選択できる機能（55色から選べます）
- プロフィールの文字の種類を選択できる機能（10種類のフォントから選べます）
- 公開設定機能（リンクを知っている人ではないとプロフィールを閲覧できない用に設定できます）
- プロフィールにSNS等のリンクを追加できます。リンクのデザインも様々な種類に設定ができ、ボタンの色やボタンの中のアイコンや文字の色も55色から自由に選択できます。
![無題478_20210308224303](https://user-images.githubusercontent.com/76430700/110329607-2e7b9980-8060-11eb-8e0e-3a22e334570b.png)
![無題478_20210308231559](https://user-images.githubusercontent.com/76430700/110333074-83211380-8064-11eb-868f-f482d056c2ac.png)





