### The story of how the RailCore II came to be
[Posted by Tony Akens on Facebook on 22 December 2018](https://www.facebook.com/groups/RailCore/permalink/2236847056601041/)

In early 2017 I decided I wanted to try a second printer. I had my delta (The NoStock, a rebuilt Rostock Max v2 from SeeMeCNC) running pretty well. I took it to MRRF but went with the intent to look at other printers, particularly corexy's. I had the idea in my mind of building a dbot. I saw a few corexy's at MRRF, and though I liked the mechanics, I didn't like any of the implementations for various reasons.

I knew I wanted my next printer to have linear rails. Modding them into the dbot looked like too much of a hack. I was chatting about this in the #RepRap IRC channel, and J. Steve White started trying to convince me to build a printer with him. He had one he called the RailCore - it had some of the aspects I wanted, but not all of them. I agreed, and we started talking design.

To be honest, he knew far more about corexy and printer design than I did, but I did have some input. Most of the original work in Fusion was his. Soon, with my feedback and his design work, we had what looked like a printer.

What I didn't have was money. So, I decided on a lark to see if I could get some sponsorship. I had a duet in my delta, and knew that was the only controller I'd be happy with in my corexy. So I wrote an email to Tim Elmore at Filastruder to see if they ever sponsored printers, offering to document the build with a BOM and list them as the supplier of any components they sold. Tim was generous enough to help us, and is likely the reason the design ever got published. So, suddenly this printer build for just Steve and I got a bit more real.

The next step was side panels, I knew I wanted a clean look, so I reached out to SeeMeCNC, and got some laser cut melamine panels for Steve and I.

I'd also been in contact with Matthew White at 713maker, since I'd had him do a custom effector plate for my delta. I reached out to him and priced out beds & carriers. Matt was great to work with on the "standard" printer beds and carriers, and also began working on stepper mounts for us as well.

It was time to start ordering parts, and by mid June, our two RailCores were built, and I had some basic documentation started in a BOM, and a rough list of parts I used.

From there we just got to printing and testing, occasionally revising parts, and touching up the documentation now and then. I attended the Detroit Maker faire with Matt, showing off the printer and getting some great attention for it there.

Later that fall, we found our first two builders, Michael Hackney and Roy Sun. That was a lot of "fun" as we worked through all my mistakes in the build guide, part revisions and corrections, and finding things like needing to source different side panels. The documentation came out of that process in much better shape.

I believe this is roughly when I created the Facebook group, and we began to more publicly discuss plans and goals for the design.

That was also when we began to notice the plastic idler mounts "creeped", which caused the idlers to lean. This was one of our first big post-design challenges, and we began working with Matt to come up with a new design out of aluminum, expanding the aluminum parts for the RailCore.

Once Michael & Roy's printers were finished, we were faced with the problem of the side panels. If anyone else was going to build a RailCore, we needed a way to guarantee those would be available. So I bought a Shapeoko, found the HDPE as a locally sourced option, and got set up to mill them.

Just after that I was contacted by David Crocker, who'd seen posts about our design. He asked if we'd be willing to implement 3 point leveling. I hesitated, and he offered a duex5 if I'd take a stab at implementing it. I couldn't turn him down, so began the plans for that. The "ZL" option was implemented almost entirely in a single weekend of marathon testing and revision in February.

We began to get some builders via the IRC and Facebook group around this time as well (A handful of standards, and a couple ZL's), and I scaled the printer up from the original 250mm^3 build volume to the 300^3. I also revamped the design in fusion for the 250, and made all of the designs public.

In March I went back to MRRF, one year after going to look for a corexy to build, with our own design. I shared a table with Matt, and happened to be next to Joel, and directly across from the Duet3d booth. There were 3 RailCores there total between me, Michael, and Roy. We got some good attention, and Joel interviewed me for his MRRF video.

From there it grew rapidly. Shortly after MRRF we found the new idler plate design fixed the idler lean. Wade Wendorf came onboard and milled X carriages, fixing the creep that was occurring in those.

I also (finally) got the design of the long awaited 300ZLT published.

Then, in mid summer, a chance twitter conversation with Joseph Podgorski lead to the idea of Project R3d making the kits available, which happened this fall and has made the design more accessible than ever.

Since then we've continued to iterate parts and improve things based on feedback as more people have built them. We have new parts being milled in aluminum all the time now, and are always working on new ideas with the constant goal of improving our prints (ultimately that's what this is about, right?)

I wanted to share this story as a brief "Here's where we came from". And to thank each of you who've built a RailCore, or just been a part of the community. It's crazy to Steve and I that this printer we designed for the two of us would ever be built by so many others.

Addenum/Reply by J. Steve White 

I was fascinated by 3d printers for a long time, and in 2015 decided I wanted one. None I could see looked like the kind of printer I wanted, so instead, I bought the cheapest printer I could find - a $369 unbadged flash forge rip-off of the makerbot dual - to make parts for the printer I wanted. The seller touted it as a “no-name CTC” (LOL) but the electronics board is marked flash forge. 

I had beginners luck, bigtime, with that first CoreXY build. It came together quickly, I figured out Repetier firmware, etc. I bought cheap V6 clones before I knew any better, and they jammed constantly, so I bought the only 'real' hot end on Microcenter's shelves (The Pico from B3) and it was great. With the new hot end, the printer printed pretty well. But it was huge; maybe 900x600x800 for a 280x280x250 build volume. It had some other issues, so I started on its replacement (though it was three iterations before I got one to print as well as the first one. )

This started me down the path of designing and building 3d printers. I was on iteration #5 when I found the IRC channel #reprap, where I met Tony and a cast of miscreants. In my first week of being in the channel I had a long argument with a regular who assured me that corexy printers could not produce a smooth curve because they could only move in x or y at any given time. Some others observed that corexy printers ‘just couldn’t stack up layers well’. I thought mine were doing ok…

I designed and built three more printers (well, five, but we won’t talk about the deltas :), finally arriving at RC1, which captured most of the things I wanted. It printed pretty well; I started showing folks in the channel some of my better prints and getting positive feedback. It was big and ugly, but it did (still does) a pretty good job. 

That’s about the time Tony’s story picks up. I remember it slightly differently, but I think that’s all perspective. I think I was half joking the first time I suggested Tony and I build a printer, and when he expressed interest, it felt like his idea, and during a brainstorming session we decided to make a project of it and publish it as open source. Then we talked and iterated and designed; I’d draw up a part, send him a screenshot, he’d give me his take on it… that’s how it went for a while. Tony says he had nightmares about our cooling shroud iterations... LOL

Finally, we built the printer *we* really wanted. It’s still amazing and gratifying that so many people seem to want the same things from a printer.
