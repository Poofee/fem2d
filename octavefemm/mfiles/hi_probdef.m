% ActiveFEMM (C)2006 David Meeker, dmeeker@ieee.org

function hi_probdef(units, ptype, precision, depth, minangle, prevsoln, dt)
if (nargin==5)
	callfemm(['hi_probdef(' , quotec(units) , quotec(ptype) , numc(precision) , numc(depth) , num(minangle) , ')']);
elseif (nargin==7)
	callfemm(['hi_probdef(' , quotec(units) , quotec(ptype) , numc(precision) , numc(depth) , numc(minangle) , quotec(prevsoln), num(dt), ')']);
end

