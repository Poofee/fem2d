% ActiveFEMM (C)2006 David Meeker, dmeeker@ieee.org

function ei_probdef(units, ptype, precision, depth, minangle)
callfemm(['ei_probdef(' , quotec(units) , quotec(ptype) , numc(precision) , numc(depth) , num(minangle) , ')']);

