# BLUECODE Homebrew Tap

BLUECODE,INC. が配布している Mac アプリの [Homebrew](https://brew.sh) 用 tap です。

## SimulatorCameraEx

[bluecode-jp/SimulatorCameraEx](https://github.com/bluecode-jp/SimulatorCameraEx)

iOS シミュレータのアプリに「カメラ」を渡す Mac アプリです。QR コード・Code 128・EAN-13・画像・動画・Mac のカメラを、アプリのコードを変えずにカメラ映像として使えます。Android エミュレータでも使えます。

### インストール

```bash
brew install --cask bluecode-jp/tap/simulatorcameraex
```

- `/Applications/SimulatorCameraEx.app` と、コマンドラインツール `simcamctl` が入ります。
- macOS 14 以降。Apple silicon・Intel のどちらでも動きます。
- アプリは BLUECODE,INC. の Developer ID で署名し、Apple の公証を受けています。
- 配布ファイル（DMG）は [SimulatorCameraEx の Releases](https://github.com/bluecode-jp/SimulatorCameraEx/releases) から取得します。この tap には Cask だけを置いています。

### 更新

```bash
brew upgrade --cask simulatorcameraex
```

### アンインストール

1. Mac の仮想カメラを有効にしていた場合は、アプリで **Deactivate** を押します。
2. 次を実行します。
   ```bash
   brew uninstall --cask simulatorcameraex
   ```
   設定ファイルも消す場合は `--zap` を付けます。

## ライセンス

MIT — [LICENSE](LICENSE) を参照してください。SimulatorCameraEx は [dautovri/SimulatorCamera](https://github.com/dautovri/SimulatorCamera) をもとにしています。
