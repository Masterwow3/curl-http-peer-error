$ErrorActionPreference = "Stop"

Set-Location C:/
curl "https://curl.se/windows/dl-7.88.1_1/curl-7.88.1_1-win64-mingw.zip" -o c:\curl.zip
Expand-Archive -Force "c:\curl.zip" "C:\"
$curl = ".\curl-*-win64-mingw\bin\curl.exe"
& $curl --version

For ($i = 0; $i -le 50; $i++) {
  & $curl -vk "https://my_website.com/curl.zip" -T "c:/curl.zip"
  if ($LASTEXITCODE -ne 0) {
    break
  }
}