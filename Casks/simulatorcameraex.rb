cask "simulatorcameraex" do
  version "1.0.3"
  sha256 "657f6965cc2cd2fd8a496303b00ed637ea3cf6767e9baacf3548e8b2224be62d"

  url "https://github.com/bluecode-jp/SimulatorCameraEx/releases/download/v#{version}/SimulatorCameraEx-#{version}.dmg"
  name "SimulatorCameraEx"
  desc "Virtual camera feed of QR codes, barcodes, images and video for simulator apps"
  homepage "https://github.com/bluecode-jp/SimulatorCameraEx"

  livecheck do
    url :url
    strategy :github_latest
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
