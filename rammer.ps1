$mem = @()
$i = 0

while ($true) {
    $block = [byte[]]::new(1GB)

    # Touch every 4KB page so it is actually committed
    for ($j = 0; $j -lt $block.Length; $j += 4096) {
        $block[$j] = 0xAA
    }

    $mem += ,$block
    $i++

    Write-Host "Allocated: $i GB"

    Start-Sleep -Milliseconds 100
}
 
