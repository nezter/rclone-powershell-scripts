$date = Get-Date -Format yyyy-MM-dd         # Gets current date for filename and path purposes
$RcloneDir = "S:\Application Data\rclone"
$Mediapath = "S:\Media\TvShows"
$RcloneLogDir = "$RcloneDir\logs\Scheduled-HAL2-TV-Clone-$date.txt"
Start-Transcript -Path "$RcloneDir\logs\Scheduled-HAL2-TV-Clone-$date.txt" #starts transcription of the console 
Write-Output "Testing if export path exists..."
if (!(Test-Path $Mediapath))         # Determines whether the export location exists
{
    Write-Output "Export path $RcloneDir did not exist, the booty maybe lost to the sea"
}
else
{
    Write-Output "Beginning rclone $RcloneDir with logs in $RcloneLogDir"
 
  $CMD = 'S:\Application Data\rclone\rclone.exe'
  $arg1 = 'copy'
  $arg2 = '--transfers=4'
  $arg3 = '--stats=10m'
  $arg4 = '--checkers=9'
  $arg5 = '--drive-chunk-size=64M'
  $arg6 = '--drive-upload-cutoff=64M'
  $arg7 = '-u'
  $arg8 = '-vv'
  $arg9 = '-P'
  $arg10 = '--stats-one-line-date'
  $arg11 = 'S:\Media\TvShows'
  $arg12 = 'hal2cryptic:Media/TvShows'
  $arg13 = $date
  $arg14 = '-n' # add for Dry-Run
  $arg15 = '--log-file HalMovieLog.log'
  
  &$CMD $arg1 $arg11 $arg12 $arg2 $arg3 $arg4 $arg5 $arg6 $arg7 $arg8 $arg9 $arg10
  Write-Output $($arg1 + ' ' + $arg11 + ' ' + $arg12 + ' ' + $arg2 + ' ' + $arg3 + ' ' + $arg4 + ' ' + $arg5 + ' ' + $arg6 + ' ' + $arg7 + ' ' + $arg8 + ' ' + $arg9 + '' + $arg10)
 
    Write-Output "rclone completed, $arg11 copy to $arg12"
}
Write-Output "Backup complete."
Stop-Transcript  #stops the transcripting of the logs
break