# アプリ名
my-bookshelf-app

# 概要
 
このアプリケーションは読書を趣味にしている方が、もっと気軽に好きな本をシェアして交流できるようにする目的で作成しました。具体的には、自分が好きな本を「簡単」「気軽」にシェアできるシェア機能、まだ出会ったことのない本と出会うことを、目的にした記事検索機能、読書で「学んだこと」「面白かったこと」をメモに残しておくためのメモ機能など、小学生〜高齢者までが簡単に使用できるに機能を実装しました。

# 本番環境
 
https://my-bookshelf-application.herokuapp.com/

Basic認証
 
・ID→tatsuya
 
・pass→1217

ログイン情報

ユーザー１（前川達也）
 
・メールアドレス→a@a
 
・パスワード→aaa111


ユーザー２（前川哲也）
 
・メールアドレス→b@b
 
・パスワード→bbb111

# 制作背景（意図）

①読書好きの方同士が、気軽にコミュニケーションを取れる機会を提供するため
 
私が趣味の読書をしている中で、一番改善したいと思っていることは、コミュニケーションを取る機会の少なさです。読書の大きな特徴として全て自分一人で完結することです。これは便利なことでもあり、人との新しい関わりを持ちにくいというデメリットでもあります。最近ではコロナウイルスの影響で、さらに人との関わりを持つ機会が減少しています。このようなことから読書をしている方々が、気軽にコミュニケーションを取れる本専用のSNSを開発し、コミュニケーションの活性化を図ろうと考えました。
 
②今まで読んだ経験のないジャンルの本と出会う機会を提供するため
 
読書をする上で欠かせないのが、「本を選ぶ」という行為です。しかし、ここに大きな課題があります。多くの方々がある一定のジャンルの本しか選ばないということです。実際に私も一定のジャンルの本しか読まない時期がありました。しかし、友人に違うジャンルの本を進められ、読んだ時に予想していた以上に感動した経験があります。私は、読書を趣味にされている方々に、様々なジャンルの本に出会う機会を提供し、新しいジャンルの本を読むことの楽しさを知って頂きたいと考えました。
 
③それぞれのニーズに対応できるサービスを、提供するため
 
人々が読書をしている目的には、大きく分類して２パターンだと考えています。それは「娯楽」「学習」です。私はこの両方を目的に読書をしています。そこで、両方の目的で役立つ機能は何かと考えたところ、メモ機能があると便利だと考えました。娯楽目的のユーザーは新しい本との出会いで「面白かった」「感動した」と思ったことを記録することで日記を作成することができます。また学習目的の方はメモを書くことで、アウトプットの機会を得られ、知識の定着を測ることが可能です。このようなことからメモ機能を実装しようと考えました。
 
# DEMO

## トップページ

![トップページの画像]()

トップページはアプリケーションの概要を知らない方が訪問することが想定されます。
 
そのため、アプリケーションの概要や対象者、機能などの説明を理解できるように説明をしました。

また、重要な文字などに色をつけたり、サイズを少し大きくするなどの工夫をしました。アニメーションを実装することも考えましたが、そちらが目立ち、重要な部分が薄れてしまうと考え、ボタンなどの細かな部分に施しました。
 
## ブログ記事一覧表示画面

![ブログ記事一覧画面]()
 
ユーザが投稿されている記事のジャンルを一眼で理解できるように、ジャンルを表示しました。
 
また検索機能に関しても、ユーザが興味のあるジャンルの本を検索しやすにようにするため、ransackを用いた高精度な検索機能を実装しました。これによりユーザが求めている情報を取得しやすくなると考えました。
 
主要な色に関しては、リラックス効果のある緑、他には黒、白の合計3色を使用しました。趣味で読書をしているユーザが多いと考えたため、リラックスしながら本を読めるようにしようと考えました。
## メモ投稿画面

![メモ投稿画面]()
 
娯楽、学習など読書の目的は様々だと思います。その時にどちらにとっても価値のあるサービスは何かと考えた時に、メモ機能があると便利だと考えました。

娯楽を目的にしている方は、様々な本との出会いで感じたことなどをメモに残すことで、日記にすることができます。
学習を目的にしている方は、読書で新しく学んだことなどをメモにすることによって、アウトプットをし、知識を定着しやすくできます。

メモが増えたり、記述量が多くなると見切れてしまう問題も生じるため、スクロール機能を実装しました


# 工夫したポイント
 
①自分が実際に読書をしていて、不便に感じたことや、必要だと思った機能をメモしておき、それを元に機能を実装することでユーザのニーズを形にしたこと。
 
②実際に自分でアプリケーションの使用感を確かめ、足りない機能を考えたり、機能の改善などに取り組んだこと。
 
③自分の考えだけでは意見が偏ってしまうため、読書好きの友人にどのような機能を求めているかを聞き、それを元に実装をしたこと。

④Rspecを利用した日本語のテスト、N＋１問題の解消、非同期通信など現場で使用される頻度の高い技術を身につけるために意識して実装したこと。
 
# 課題や今後実装したい機能
 
①自分が読んで、面白いと思った記事や勉強になったと思った記事に対するいいね機能
(「いいね」は言葉では無いものの、一つのコミュニケーションですので、コミュニケーションを活性化させることができると考えたから。)
 
②読んだ本や、これから読みたい本などを記録しておく機能。
 
# 使用技術（開発環境）

# バックエンド

Ruby,Ruby on Rails

# フロントエンド

HTML5/CSS3,javascript,Ajax

# データベース

MySQL

# インフラ

Heroku

# Webサーバ（本番環境）

Heroku

# アプリケーションサーバ（本番環境）

Heroku

# ソース管理

GitHub,GitHubDesktop

# テスト

Rspec

# エディタ

VSCode

##user

| Column        | Type   | Options  |
| ------------- | ------ | -------- |
| email         | string | NOT NULL |
| password      | string | NOT NULL |
| name          | string | NOT NULL |
| favorite_book | text   | NOT NULL |

 - has_many :blogs
 - has_many :comments
 - has_many :memos

 ##blogs

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| title       | string     | NOT NULL                       |
| catch_copy  | string     | NOT NULL                       |
| article     | text       | NOT NULL                       |
| category_id | integer    | NOT NULL                       |
| user        | references | null: false, foreign_key: true |

- belongs_to :user
- has_many :comments


##comments

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| text      | text       | NOT NULL                       |
| user      | references | null: false, foreign_key: true |
| blog      | references | null: false, foreign_key: true |

- belongs_to :user
- belongs_to :blog


##memos

| Column | Type       | Options                        |
| -------| ---------- | ------------------------------ |
| name   | string     | NOT NULL                       |
| point  | text       | NOT NULL                       |
| text   | text       | NOT NULL                       |
| user   | references | null: false, foreign_key: true |

- belongs_to :user