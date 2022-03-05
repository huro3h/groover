#### groover

##### rails new

```shell
bundle exec rails new groover -B -d mysql --skip-turbolinks --skip-test --skip-webpack-install --skip-action-cable --skip-sprockets --skip-spring -T
```

#### .bundle/config

```shell
$ cat .bundle/config
---
BUNDLE_PATH: "vendor/bundle"
BUNDLE_JOBS: "8"
BUNDLE_BUILD__MYSQL2: "--with-cppflags=-I/opt/homebrew/opt/openssl@3/include --with-ldflags=-L/opt/homebrew/opt/openssl@3/lib"
```

#### migration
```
bundle exec ridgepole -c config/database.yml -E development -f db/Schemafile --apply
```

#### DB
- PlanetScale
  - https://planetscale.com/

#### RubyMineからrails server実行時 "SDK に Rails が見つかりません"   
- 原因  
プロジェクトディレクトリ内の `vendor/bundle` 以下にインストールしたgemがRubyMine側で読み込めていない
- 確認方法
  - プロジェクトツリー内の外部ライブラリ以下に `Gemfile` で入れたgemがあるか
  - 環境設定 > Ruby SDK および Gem > rbenv(何らかのバージョン管理ツール)  
  以下に `Gemfile` で入れたgemがあるか
- 暫定的な回避方法
  - bundlerでgem installする際のpath指定を止めてグローバル環境に入れる  
    (以前はpath指定しても問題なかった気がする)
