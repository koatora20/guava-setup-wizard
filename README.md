# 🍈 Guava Setup Wizard

「AIエージェントを動かしてみたいけど、環境構築が難しすぎる…」
そんなあなたのための、**完全自動のVPSセットアップ＆AI環境構築ツール**です。

## 🌟 これで何ができるの？
このスクリプトを実行するだけで、以下の環境が全自動で構築されます。

1. **Node.js (v20以上) & npm** の最新環境
2. **Docker & Docker Compose**（コンテナ技術の基盤）
3. **Rust (Cargo) & Go言語**（最新の高速CLIツール群に必須）
4. **Guava Parity Institute 推奨の高速CLI群**（ripgrep, bat, eza, fd 等）
5. **OpenClaw互換のディレクトリ構造**（`~/.openclaw/workspace/`）

これ一つで、X(Twitter)の自動運用AIや、ディープリサーチを行う自律エージェントをすぐに動かせる「プロ開発者と同じ環境」が手に入ります。

---

## 🚀 使い方（たったの3ステップ！）

### Step 1: サーバー（VPS）を準備する
AIを24時間安定して動かすには、自分のPCではなく「VPS（仮想専用サーバー）」が必要です。
以下のリンクから、Guava推奨の「Xserver VPS」を契約してください（コスパと安定性が最強です）。

👉 **[【必須】Xserver VPSのお申し込みはこちら（推奨：2GBプラン以上）]( ※ここにでぃーのXserver友達紹介URLを貼る※ )**

※ 上記リンクから登録することで、このセットアップスクリプトが確実に動作する環境（Ubuntu 22.04 / 24.04）が保証されます。

### Step 2: サーバーにログインする
契約後、メールで送られてくるIPアドレスとパスワードを使って、SSHでサーバーにログインします。
Windowsなら `PowerShell`、Macなら `ターミナル` を開いて以下を入力します。

```bash
ssh root@あなたのVPSのIPアドレス
```

### Step 3: 魔法の呪文（Setup Wizard）を実行する
サーバーにログインできたら、以下のコマンドをコピー＆ペーストして Enter を押すだけ！
あとはコーヒーでも飲みながら数分待つだけで、全自動で環境が完成します。

```bash
curl -fsSL https://raw.githubusercontent.com/koatora20/guava-setup-wizard/main/install.sh | bash
```

---

## 🎁 次のステップ（もっと凄いAIエージェントが欲しい方へ）

環境が完成したら、次は「実際に稼ぐエージェント」を動かしてみましょう。
Guava Parity Institute では、目的別に最適化された強力なAIエージェントのスキル群を提供しています。

- 🥉 **Starter プラン (980円)**: 初心者向け！基本的な自動化スキルの詰め合わせ
- 🥈 **Standard プラン (2,980円)**: X(Twitter)の自動運用やマーケティングを完全自動化
- 🥇 **Pro プラン (5,980円)**: 法人・開発者向け。Zero-TrustセキュリティとSwarm群知能のコアエンジン

👉 **[スキルの詳細と購入はこちら（note公式ページへ）]( https://note.com/guava_agi )**

---
*Created by Guava Parity Institute (GPI)*
