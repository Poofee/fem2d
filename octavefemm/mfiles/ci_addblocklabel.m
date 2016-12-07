% ActiveFEMM (C)2006 David Meeker, dmeeker@ieee.org

function ci_addblocklabel(x,y)
if (nargin==2)
	callfemm(['ci_addblocklabel(' , numc(x) , num(y) , ')' ]);
elseif (nargin==1)
	callfemm(['ci_addblocklabel(' , numc(x) , num(y) , ')' ]);
end

