## Things to test and configure once built


### Early tests for building

* Test your probes work (motion test macro)
* Test your endstops work (motion test macro)
* Check your Z axis moves up and down by the same amount of mm
* Check your extruder
* Set M208 axis minima:maxima switch positions - Adjust to suit your machine and to make X=0 and Y=0 the edges of the bed
* PID tune your bed
* PID tune your hotend.

### Later tests for fine tuning

*  Decide whether you want to switch on extra network services such as FTP and telnet
* Test your required X Y currents are suitable.
* Test your Z current - Run some tests last night on Z stepper current. How far can you take the current down without stalling with a 2-3Kg of filament on it?
* Test your idle current, use 2-3 kg of filament and see how far you can (using M913 Znn)
* Run an axis compensation stl.
  * Is it the right size? You can use M579 to scale
  * Is it square? You can use M556 to software correct squareness.
