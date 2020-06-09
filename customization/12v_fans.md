In the standard build, the RailCore's Duet2 board supports only 24v Fans but the Duex5 makes it very easy to add 12v Fans to your design.

Inexpensive 12v fans in 120mm, 80mm or other common computer-case size can be used to cool the electronics enclosure or printer interior, and the Duet firmware makes it easy to assign a thermostat for fan control.  The Duex5 provides a built-in 12v 2A switching regulator for LEDs or Fans, but it is not enabled by default.

# Configure 12v Power
Study the [Duex5 Connection Pinout](https://duet3d.dozuki.com/Wiki/Duex_wiring_diagrams) to identify the `INT 12V EN` jumper near the top-left of the board.
You must connect a jumper across these two pins to turn on the 12v power supply.

# Configure the V_FAN power
By default, the Duex uses 24v for all `V_FAN` connections.  Locate the "V_FAN JUMPER SELECT" and move the jumper from VIN (far left) to 12V
