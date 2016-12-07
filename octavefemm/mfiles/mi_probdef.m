% ActiveFEMM (C)2006 David Meeker, dmeeker@ieee.org

function mi_probdef(freq, units, ptype, precision, depth, minangle, acsolver)
if (nargin==6)
callfemm(['mi_probdef(' , numc(freq) , quotec(units) , quotec(ptype) , numc(precision) , numc(depth) , num(minangle) , ')' ]);
elseif (nargin==7)
callfemm(['mi_probdef(' , numc(freq) , quotec(units) , quotec(ptype) , numc(precision) , numc(depth) , numc(minangle) , num(acsolver) ')' ]);
end

