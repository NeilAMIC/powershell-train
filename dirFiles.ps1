# This script reads a directory tree and removes the file type
# You cand trim a filename how you want by changing the split command
# Uncomment the Write-Host section to view results while processing

$fileDirectory = "C:\Script\Test"
$outFile = "C:\users\user\desktop\dirFiles.txt"
$allFiles = Get-ChildItem $fileDirectory -recurse -File | select Name | Sort-Object

foreach ($file in $allFiles){
	$parts = $file.Name -split '\.'
	#Write-Host $parts[0]
	Out-File -filepath $outFile -InputObject $parts[0] -Append
}
