# Ender-5-BLTouch-AutoLeveling-G-code

This repository contains gcode files for BLTouch auto levelling on the Creality Ender 5 and Ender 5 pro 3D printers. You can save time and reduce the number of levelling jobs by separating the levelling and printing jobs as described below.

Read through everything before use!

## Features:

- Auto levelling with the BLTouch in a separate gcode file
- Reduction in the number of of levelling jobs


## The story

I upgraded my Ender 5pro with a BLTouch to increase the accuracy of the z-leveling. In fact, the standard mechanical solution was very poor in my case. I found many wrong calibrations with a variation of the leveled position of about +/-200um. It was a shame for this great printer and caused a lot of frustration. After the upgrade, I have noticed an exceptional improvement in Z-leveling accuracy. 
The Creality BLTouch firmware also supports mesh levelling of the print bed with g-code 'G29'. This is done with nine calibration points to optimise any variation of the small print bed. This is a valuable feature that can be found on almost all professional printers. 
You can add this mesh levelling to the start code of each print job and always get an optimised print. But for me, mesh levelling at the start of each print is absolutely MUDA. I always use the same printing bed. So I do the automatic mesh levelling with a separate g-code file and save the leveled data to non-volatile memory with g-code 'M500' at the end. In this case, I simply recall the saved mesh data with g-code 'M420 S1' on each print job, saving time while I watch the first layer print. 


## Experience with magnetic printing plates

I use the Blackprint magnetic plate from https://printbay.eu/ on all my printers. You can remove the entire plate after a print job and easily release the printed objects while bending the plate. My experience is that no new levelling is necessary after removing and reattaching the magnetic bed. 

## Files

- BLTouch_40_cali.gcode --> Automatic levelling at 40°C
- BLTouch_50_cali.gcode --> Automatic levelling at 50°C
- ...

Note: The file heats up the print bed after the start and waits for the target temperature. It is not necessary to heat up the print bed manually beforehand. After levelling, the bed is switched off. 


## Warning

The use is at your own risk! Use must take place under constant observation. If necessary, the file must be adapted to your own environment. The files are provided “as is”, without warranty of any kind, express or implied, including but not limited to the warranties of merchantability, fitness for a particular purpose and noninfringement.