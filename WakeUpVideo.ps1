$videoDirectory = "C:\Users\Peen\Desktop\Adventure Time\Adventure Time - Season 1";
$watchedTag = " - WATCHED";

cd $videoDirectory
$videos = get-childitem . -Exclude *Watched.mp4
$videos[0]
Invoke-item $videos[0]