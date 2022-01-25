$bandwidth = Read-Host 'What is your network connection bandwith in Megabits per second'
$bandwidth_value = $bandwidth -as [Double]
$RTT = Read-Host 'What is your network connection round-trip time in seconds'
$RTT_value = $RTT -as [Double]
$WindowValue = $bandwidth_value * 1000000 * $RTT_value / (64 * 1024 * 8)
$log_2_X = [math]::log($WindowValue) / [math]::log(2)
$final_WindowValue = [math]::round($WindowValue)
$final_FactorValue = [math]::round($log_2_X)
Write-Host 'Your optimal Window Scale is 64 *' $final_WindowValue
Write-Host 'Your optimal Window Scale factor is:' $final_FactorValue