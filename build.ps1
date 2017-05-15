compiler/pabcnetcclear.exe Application.pas
if ($?) {
    if (-not (Test-Path bin)) {
        New-Item -Type Directory bin
    }

    Copy-Item Application.exe bin
    Copy-Item 'libs/*' bin
    Copy-Item app.config bin/Application.exe.config
}