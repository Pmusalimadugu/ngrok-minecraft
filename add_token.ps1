$file_data = Get-Content ./token.txt
./ngrok authtoken $file_data
pause