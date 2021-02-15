settings.outformat="pdf";

settings.prc = false;

import three;
real yellowPart = 0.4;
pen yellowPen = yellowPart*yellow + (1-yellowPart)*white + opacity(0.5);
pen yellowPenSolid = 0.5*(yellowPen + opacity(1.0)) + 0.5*white;
currentlight.background = yellowPenSolid; 
size(1.2cm,0);

draw((0,0,0) -- (1,1,1), linewidth(2pt));

shipout(scale(4.0)*bbox(p=nullpen,filltype=Fill(yellowPenSolid)));
