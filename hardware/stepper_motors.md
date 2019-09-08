---
title: Stepper Motors
---  
The fundamental design of the Railcore is intended to be used with 0.9º stepper motors in X, Y, and E, and some combination of leadscrew and stepper that gives 0.01mm full-step resolution in Z. This can be accomplished with 0.9º steppers and a T8*4 (2-start) leadscrew, or the way the Project R3D kit accomplishes it with 1.8º steppers and a T8*2 leadscrew setup. The two are functionally equivalent, though the 1.8º steppers are slightly noisier because they turn twice as fast for a given move speed. 

The Project R3D kits use 0.9º steppers from E3D on X, Y, and E. The original Railcore prototype used a pair of 0.9º steppers jstevewhite happened to have laying around. 

Moons steppers: 
 * X/Y : Model MS17HA6P4200

LDO steppers:  
* X/Y: 42STH47-1684MAC,  
* Z: 42STH47-1684MAC or  42STH38-1684MAC 
* E: 42STH25-1404MAC

**Further Thoughts on Stepper Selection:**

Folks have asked me why I use 225 os/in NEMA23s on my 250ZL RailCore. “Steve, surely it doesn’t take that much torque to toss that carriage around, right?”. Well, that’s correct. I can move it just fine with NEMA17s - up to 400mm/s, in fact. That said…

Steppers are open loop. The controller doesn’t know where the motor *actually* is. It only knows where it *told* it to be. Now, you may have seen charts of “torque at microstepping” (https://www.machinedesign.com/archive/microstepping-myths). This intuitively seems to mean that if I command a 1/256th move, it only has 0.06% of the torque of the motor. This is a misunderstanding. It’s about *holding* torque. What it means is that it takes 0.06% of the motor’s holding torque to deflect the shaft 1/256th of 0.9º (assuming it’s a 0.9º motor, and the motors on RC2 are in fact 0.9º by design). 

Stepper motors have internal friction and cogging that can result in situations where commanding a 1/256th move results in no shaft movement at all. 

Diverting the shaft 1/16 of 0.9º takes roughly 10% of the torque of the motor. 

The upshot of this series of seemingly unrelated facts is that the precision with which a stepper can reach a given position on successive attempts is a ratio between the torque of the motor and the friction of the system. Rails have a good amount of friction, as do belts and pulleys and even hot ends while you smoosh down filament. This all adds up to the RailCore with stock NEMA17s seems to hit about ¼ step precision *or so*, meaning +/- 0.03mm ( 200 steps per mm at 1/16 = .005 per step; actual measured registration error on NEMA17 railcore is ~ 0.04-0.06 or so, so +/- 0.02mm ). 

This is also why you’ll read that you cannot depend on micro-stepping for precision. 

There are two ways to approach this. Increase the torque per angular degree (i.e., go to a 0.45º stepper! ) or increase motor torque. I tested with a gear reduction system of 3x (effective angular degree of .3º, or 1200 steps per rotation), which improved wall quality significantly. But, we weren’t certain if it was due to increased precision (higher steps/mm), or increased torque (~3x torque for 0.9º deflection). So I decided to test NEMA23s. In doing so I had to go to 20T motor pulleys, dropping my resolution to 160 steps/mm at 1/16 stepping. 

The result was significantly improved wall registration. Perhaps 50% improvement; my measurements have been <0.03 registration error, for a +/- 0.015 or so. At this level the variation in high quality filament is good for +/- 0.01 (though likely not between two layers; they don’t change diameter that fast). I need to improve my profiles now to see if I can get better positioning. With the 225 oz/in NEMA23s I’m running it looks like ~ 1/8 step precision from layer to layer. 


**TLDR:** Torque vs Friction controls stepper precision and higher torque with constant friction results in higher precision. Also, reducing friction will result in higher precision.
