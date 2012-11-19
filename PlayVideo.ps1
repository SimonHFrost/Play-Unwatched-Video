function Get-ScriptDirectory
{
    $Invocation = (Get-Variable MyInvocation -Scope 1).Value
    Split-Path $Invocation.MyCommand.Path
}

$videoDirectory = Get-ScriptDirectory

cd $videoDirectory

$temp = Test-Path "$videoDirectory\Watched"
if(!$temp) {
    mkdir "Watched"
}

$videos = get-childitem . -exclude "Watched"
$currentVid = $videos[0].name

move $currentVid "Watched"
$newPath = "$videoDirectory\Watched\$currentVid"

Invoke-item $newPath