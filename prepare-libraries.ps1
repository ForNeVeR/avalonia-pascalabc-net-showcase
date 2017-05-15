param (
    $LibraryDirectory = "$PSScriptRoot/libs"
)

Write-Output 'Preparing library packages…'

$libraries = @(
    "$PSScriptRoot/packages/Avalonia/lib/net45/*"
    "$PSScriptRoot/packages/Avalonia.Direct2D1/lib/net45/*"
    "$PSScriptRoot/packages/Avalonia.Win32/lib/net45/*"
    "$PSScriptRoot/packages/SharpDX/lib/net45/*"
    "$PSScriptRoot/packages/SharpDX.Direct2D1/lib/net45/*"
    "$PSScriptRoot/packages/SharpDX.Direct3D11/lib/net45/*"
    "$PSScriptRoot/packages/SharpDX.DXGI/lib/net45/*"
    "$PSScriptRoot/packages/Sprache/lib/net40/*"
    "$PSScriptRoot/packages/System.Reactive.Core/lib/net45/*"
    "$PSScriptRoot/packages/System.Reactive.Interfaces/lib/net45/*"
    "$PSScriptRoot/packages/System.Reactive.Linq/lib/net45/*"
)

if (-not (Test-Path $LibraryDirectory)) {
    $null = New-Item -ItemType Directory $LibraryDirectory
}

Copy-Item $libraries $LibraryDirectory
