# stop Ngrok it if is running
Get-Process ngrok -ErrorAction SilentlyContinue | Stop-Process -PassThru
try
{
    $file_data = Get-Content ./port.txt
    ./ngrok.exe tcp $file_data -log=stdout

}
finally
{
    # if the server is stopped, crashes, or the script is killed, stop ngrok
    Stop-Process -Name "ngrok"
    write-host "Stopped Ngrok"
}
