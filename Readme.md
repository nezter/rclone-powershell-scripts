
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
  
  
  
RCLONE CONFIGS
__________________________________________________________

[TV Google Drive]
type = drive
client_id = <KEY>m.apps.googleusercontent.com
client_secret = <Secret.Key>
scope = drive
chunk_size = 64M
token = {"access_token":"":"","refresh_token":"","expiry":""}
team_drive = <Team_Drive>

[ TV Google Drive Gcache]
type = cache
remote = <Location Drive>:<Location Folder>
plex_url = http://127.0.0.1:32400
plex_username = 
plex_password = 
chunk_size = 5M
info_age = 48h
chunk_total_size = 10G

[TV Google Drive Ecryption from Gcache Drive]
type = crypt
remote = <gcache Location>:/<gcache folder>
filename_encryption = standard
directory_name_encryption = true
password = 
password2 = 

[Movie Google Drive Ecryption from Gcache Drive]
type = crypt
remote = <gcache Location>:/<gcache folder>
filename_encryption = standard
directory_name_encryption = true
password = 
password2 = 

[Movie Google Drive Gcache]
type = cache
remote = <Location Drive>:<Location Folder>
plex_url = http://127.0.0.1:32400
plex_username = 
plex_password = 
chunk_size = 10M
info_age = 48h
chunk_total_size = 10G

[Movie Google Drive]
type = drive
scope = drive
chunk_size = 64M
token = {"access_token":"":"","refresh_token":"","expiry":""}
team_drive = <Team_Drive>

