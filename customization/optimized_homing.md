Standard macros such as homeall and a multiple truelevel are slow for several reasons

* probe speed and height are pretty large when doing repeated levelling
* calling home x/y/z , bed and mesh probing all start with a "Z up", and can end with a "Z down" at the end, to avoid hot-end crashes

creating "sub-macros" that are the heart of common procedures (such as home Y) means you can optimize your macros by speeding up certain probes and not repeatedly going up and down for no reason.
