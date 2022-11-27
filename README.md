# BERT_for_masked_sentence

一部がマスクされた日本語の文章から，マスクされた単語を推測する．
[京都大学，黒橋・褚・村脇研究室](https://nlp.ist.i.kyoto-u.ac.jp/)の，[日本語で学習した BERT の事前学習モデル](https://huggingface.co/nlp-waseda/roberta-base-japanese)を，Hugging Face 社の Transformers ライブラリを使用して動かす．
形態素解析には，同じく京都大の黒橋・褚・村脇研究室が開発した[Juman++]を使用．

# Juman++のインストール（メモ）

事前準備

```
apt install cmake -y
apt upgrade -y
apt install build-essential -y
```

インストール

```
cd jumanpp-2.0.0-rc3
mkdir bld
cd bld
cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr/local
make
make install
```

確認

```
jumanpp -v
echo "魅力がたっぷりと詰まっている" | jumanpp
```
