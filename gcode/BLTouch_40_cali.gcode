; Ender5pro BLtouch mesh leveling
G90 ; use absolute coordinates
M140 S40 ; set bed temp
M190 S40 ; wait for bed temp to stabilize
G28		; Homing 
G29		; Start automatic leveling sequence
M500	; Save mesh data into none voltaile memory --> EPROM. Note: Reload saved mesh data with "M420 S1" inside the start G-code of your printing file. 
M140 S0 ; turn off heatbed
G1 X0 Y0 Z30 F2000
M84 X Y E ; disable motors
