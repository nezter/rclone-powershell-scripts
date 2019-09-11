
Start-Transcript -Path "$RcloneDir\logs\Log-Name-$date.txt" #starts transcription of the console into a log file
Args from Rclone used:

  $arg2 = '--transfers=4'
  $arg3 = '--stats=10m'
  $arg4 = '--checkers=9'
  $arg5 = '--drive-chunk-size=64M'
  $arg6 = '--drive-upload-cutoff=64M'
  $arg7 = '-u'
  $arg8 = '-vv'
  $arg9 = '-P'
  $arg10 = '--stats-one-line-date'
  $arg14 = '-n' # add for Dry-Run
  $arg15 = '--log-file HalMovieLog.log'
  
  Add or remove nessesary arg's