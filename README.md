# 起動の仕方

 1. コンソールから rails s
 2. http://localhost:3000/dashboard にアクセス

### DB再作成

```
bin/rake db:migrate:reset
```

### テストデータ読み込み

```
bin/rake db:fixtures:load
```

### おまけ：bootstrap対応

Gemfileに以下を追記
```ruby
gem 'therubyracer'
gem 'less-rails'
gem 'twitter-bootstrap-rails'
```

gemをインストール
```
bundle install
```

bootstrapファイルを追加

```
rails g bootstrap:install
```

### 参考

- [RailsにTwitter Bootstrapの導入と簡易な使い方 - Rails Webook](http://ruby-rails.hatenadiary.com/entry/20140801/1406818800)