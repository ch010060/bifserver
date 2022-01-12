$MYPATH = "MYPATH"
$files = Get-ChildItem -PATH $MYPATH -FILE -Recurse -Include *.mp4, *.mkv, *.avi, *.wmv, *.ts, *.vob, *.divx, *.m4v, *.mpeg, *.rmvb, *.flv
foreach ($file in $files)
{
    $filename = $file.fullname.replace("\","/")
    curl -I http://localhost:32405/${filename}.hd.bif
}