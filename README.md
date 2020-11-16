# play_parl_ai
play_parl_ai

# build and run (local)
```
docker build . -t play_parl_ai:0.1
docker run --rm -it -p 8080:8080 play_parl_ai:0.1
```

# cloud build と cloud run
- cloud build のAPIを有効にする
- cloud run のAPIを有効にする
- cloud build のトリガーを設定する
- トリガーをrunする
    - レジストリを確認する
- deploy
    - https://cloud.google.com/cloud-build/docs/deploying-builds/deploy-cloud-run
- サービスを公開する
    - https://cloud.google.com/run/docs/securing/managing-access?authuser=2&hl=ja

# 制約
- https://qiita.com/massie_g/items/5a9ce514eaa7c460b5e3
