$sourcePath = "C:\Your\Source\Path"
$destinationPath = "C:\Your\Destination\Path"

$subfolders = Get-ChildItem -Path $sourcePath -Directory

foreach ($folder in $subfolders) {
    
    $folderPath = Join-Path -Path $sourcePath -ChildPath $folder.Name

    Get-ChildItem -Path $folderPath | Move-Item -Destination $destinationPath -Force

}