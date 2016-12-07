% ActiveFEMM (C)2006 David Meeker, dmeeker@ieee.org

function ho_showvectorplot(x,y)
if (nargin==2)
	callfemm(['ho_showvectorplot(' , numc(plottype) , num(scalefactor) , ')' ]);
elseif (nargin==1)
	callfemm(['ho_showvectorplot(' , num(plottype) , ')' ]);
end
