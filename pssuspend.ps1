$INPUT_JSON = Read-Host
$INPUT_ARRAY = $INPUT_JSON  | ConvertFrom-Json 
$INPUT_ARRAY = $INPUT_ARRAY | ConvertFrom-Json
$process_id = $INPUT_ARRAY."parameters"."alert"."data"."win"."eventdata"."processId"
stop-process -id $process_id -Force 

