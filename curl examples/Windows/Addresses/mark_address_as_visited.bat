@ECHO OFF
SET url=https://www.route4me.com
SET apikey=11111111111111111111111111111111
SET routeid=5C15E83A4BE005BCD1537955D28D51D7
SET addressid=160940135

ECHO ON

:: is_visited=1 means address visited, is_visited=0 --- not visited
:: returns message 'File not found' - needs clarification

curl -o file1.txt -g -k -X GET "%URL%/api/address/update_address_visited.php?api_key=%apikey%&route_id=%routeid%&address_id=%addressid%&is_visited=1"

timeout /t 30