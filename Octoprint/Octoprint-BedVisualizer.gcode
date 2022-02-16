M117 Homing all axes ; send message to printer display
G28      ; home all axes
M140 S60 ; starting by heating the bed for nominal mesh accuracy
M117 Heating the bed ; send message to printer display
M190 S60 ; waiting until the bed is fully warmed up
M104 S120 ; starting by heating the hotend for nominal mesh accuracy
M117 Heating the hotend ; send message to printer display
M109 S120 ; waiting until the hotenfd is fully warmed up
M300 S1000 P300 ; chirp to indicate bed mesh levels is initializing
M117 Creating the bed mesh levels ; send message to printer display
M155 S30 ; reduce temperature reporting rate to reduce output pollution
@BEDLEVELVISUALIZER	; tell the plugin to watch for reported mesh
G29 T	   ; run bilinear probing
M155 S3  ; reset temperature reporting
M140 S0 ; cooling down the bed
M104 S0 ; cooling down the hotend
M300 S440 P200 ; make calibration completed tones
M300 S440 P400
M117 Bed mesh levels completed ; send message to printer display