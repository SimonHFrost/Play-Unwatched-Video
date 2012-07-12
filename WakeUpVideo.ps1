$videoDirectory = "C:\Users\Peen\Desktop\Adventure Time\Adventure Time - Season 1";
$watchedTag = ' WATCHED.mp4';

cd $videoDirectory
$videos = get-childitem . -Exclude *$watchedTag
$currentVid = $videos[0]
$newName = "$currentVid $watchedTag" 
rename-item $currentVid $newName
Invoke-item $newName