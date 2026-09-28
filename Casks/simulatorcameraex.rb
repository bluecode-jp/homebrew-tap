cask "simulatorcameraex" do
  version "1.0.1"
  sha256 "23a2d52dc7c0d691e17b880ec0df444f4e9c90f35159195b2928cb068dc13030"

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
