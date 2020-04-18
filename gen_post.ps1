
$fileadd="new-post"
$sdate=Get-Date -UFormat '+%Y-%m-%d' 
$path="_posts/"
$filename=$path+$sdate+"-"+$fileadd+".md"

New-Item -Path . -Name $filename -ItemType "file" 

$From = Get-Content -Path start_post.md
Add-Content -Path $filename -Value $From

notepad.exe $filename
#end