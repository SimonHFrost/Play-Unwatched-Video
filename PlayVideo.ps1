function Get-ScriptDirectory
{
    $Invocation = (Get-Variable MyInvocation -Scope 1).Value
    Split-Path $Invocation.MyCommand.Path
}

$videoDirectory = Get-ScriptDirectory
cd $videoDirectory

$videos = get-childitem . -exclude "watched"
$currentVid = $videos[0].name

move $currentVid "watched"
$newPath = "$videoDirectory\watched\$currentVid"
Invoke-item $newPath