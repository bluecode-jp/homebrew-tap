cask "simulatorcameraex" do
  version "1.0.0"
  sha256 "14e67313f2361c02d8874a94e7383c4971858937f26c5e3a7a22e9b6daa11b7d"

  url "https://github.com/bluecode-jp/homebrew-tap/releases/download/simulatorcameraex-#{version}/SimulatorCameraEx-#{version}.dmg"
  name "SimulatorCameraEx"
  desc "Virtual camera feed of QR codes, barcodes, images and video for simulator apps"
  homepage "https://github.com/bluecode-jp/homebrew-tap"

  livecheck do
    url :url
    regex(/^simulatorcameraex[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "SimulatorCameraEx.app"
  binary "#{appdir}/SimulatorCameraEx.app/Contents/MacOS/simcamctl"

  uninstall quit: "jp.co.bluecode.SimulatorCameraEx"

  zap trash: "~/Library/Preferences/jp.co.bluecode.SimulatorCameraEx.plist"

  caveats <<~EOS
    Mac の仮想カメラ（Android エミュレータや Zoom などで使う場合）を使うときは、
    アプリで Activate を押し、「システム設定 → 一般 → ログイン項目と機能拡張」で
    カメラ拡張を許可してください。iOS シミュレータで使うだけなら不要です。

    アンインストールする前に、アプリで Deactivate を押してカメラ拡張を外してください。
  EOS
end
