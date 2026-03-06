Add-Type -AssemblyName System.Drawing
$dir = "c:\Users\kloehzieri\Documents\babi-birthday\assets\stickers"
$files = @("babi1.png", "babi2.png", "cat1.png", "cat2.png", "cat3.png", "cat4.png", "cat5.png", "cat6.png", "bow.png")
foreach ($f in $files) {
    $path = Join-Path $dir $f
    $img = [System.Drawing.Image]::FromFile($path)
    Write-Host "$f : $($img.Width) x $($img.Height)"
    $img.Dispose()
}
