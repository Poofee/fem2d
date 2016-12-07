% ActiveFEMM (C)2006 David Meeker, dmeeker@ieee.org

function mi_addblocklabel(x,y)
if (nargin==2)
	callfemm(['mi_addblocklabel(' , numc(x) , num(y) , ')' ]);
elseif (nargin==1)
	callfemm(['mi_addblocklabel(' , numc(x) , num(y) , ')' ]);
end

