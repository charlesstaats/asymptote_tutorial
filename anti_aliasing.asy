settings.tex="pdflatex";
settings.render=16;
settings.prc = false;

import three;
size(5cm);

draw((0,0,0) -- (1,1,1), linewidth(2pt));

string filenamebase = outprefix();
shipout(currentpicture, prefix=filenamebase+"-highres", view=false, format="pdf");
shipout(scale(4)*currentpicture.fit(), prefix=filenamebase+"-truehighres", view=false, format="pdf");

settings.render = 1;

shipout(currentpicture, prefix=filenamebase+"-lowres", view=false, format="pdf");

currentpicture = new picture;
string highresgraphic = graphic(filenamebase+"-highres.pdf");
label(graphic(filenamebase+"-highres.pdf"), position=(0,0), align=W);
label(graphic(filenamebase+"-lowres.pdf"), position=(0,0), align=E);
label(graphic(filenamebase+"-truehighres.pdf", "scale=0.25"), position=(0,0), align=S);
shipout(scale(8)*currentpicture.fit());
