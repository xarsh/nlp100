言語処理100本ノック 2015
===

言語処理に詳しくないので有名な問題集をやってみた。
http://www.cl.ecei.tohoku.ac.jp/nlp100/


### 言語
- Ruby


### データ・コーパス
必要なデータは下記リンクからダウンロードし、`data`フォルダに置きます。
http://www.cl.ecei.tohoku.ac.jp/nlp100/data/


### 第4章:形態素解析について
```
$ brew install mecab mecab-ipadic
$ mecab data/neko.txt > data/neko.txt.mecab
```
