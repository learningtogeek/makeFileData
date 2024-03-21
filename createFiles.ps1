# Specify the directory where you want to create the files
mkdir "C:\Users\Public\filestore\"
$directory = "C:\Users\Public\filestore\"

# Specify the number of files to create
$fileCount = 500

# Specify the size of each file in bytes
$fileSize = 4098  # 4 KB

# Loop to create the files
for ($i = 1; $i -le $fileCount; $i++) {
    $filePath = Join-Path -Path $directory -ChildPath ("file_$i.txt")
    $content = [byte[]]::new($fileSize)
    [System.IO.File]::WriteAllBytes($filePath, $content)
}