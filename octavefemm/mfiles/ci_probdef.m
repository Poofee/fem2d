% ActiveFEMM (C)2006 David Meeker, dmeeker@ieee.org

function ci_probdef(units, ptype, frequency, precision, depth, minangle)
callfemm(['ci_probdef(' , quotec(units) , quotec(ptype) , numc(frequency) , numc(precision) , numc(depth) , num(minangle) , ')']);

