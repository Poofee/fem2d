-- Define some common quantities for use in Lua

	uo=PI*4.e-7;           -- magnetic permeability of free space
	eo=8.85418781762e-12;  -- electrical permittivity of free space
	Pi=PI; pi=PI;          -- various ways that one might possibly denote PI

-- Useful unit definitions

	meter=1;
	meters=meter; Meter=meter; Meters=meter;

	inch=0.0254;
	inches=inch; Inch=inch; Inches=inch; in=inch;

	cm=0.01;
	centimeter=cm; centimeters=cm; Centimeters=cm; Centimeter=cm;

	mm=0.001;
	millimeters=mm; millimeter=mm; Millimeter=mm; Millimeters=mm; milimeter=mm; milimeters=mm;

	um=0.000001;
	micrometer=um; Micrometer=um; micrometers=um; Micrometers=um;
	micron=um; Micron=um; microns=um; Microns=um;

	mil=0.001*inch;
	mils=mil; Mils=mil; Mil=mil;

	Tesla     = 1;
	mTesla    = 0.001;
	Gauss     = 0.0001;
	kGauss    = 0.1;
	AmpMeter  = 1;
	kAmpMeter = 1000;
	Oersted   = 250/PI;
	kOersted  = 1000*Oersted;

-- Useful functions

	-- Function to determine the diameter in mm of a specified AWG wire gauge
	function AWG(awg) return 8.2514694*exp(-0.115943*awg) end

	-- Function to read in BH points for a material from a file
	-- Contributed by Dr. Henning Kiel
	function mi_setbhpointsfromfile(filename, materialname, unitb, unith, order)
		fact_b = Tesla
		fact_h = AmpMeter
		bh = 1

		if unitb ~= nil then
			fact_b = unitb
		end
		if unith ~= nil then
			fact_h = unith
		end
		if order == 1 then
			bh = 0
		end
    
		bhfile = openfile(filename,"r")
		if  bhfile ~= nil then
			mi_clearbhpoints(materialname)
			if bh == 1 then
			b, h = read(bhfile,"*n","*n")
		else
			h, b = read(bhfile,"*n","*n")
		end
			while b ~= nil do
				mi_addbhpoint(materialname, b, h)
				if bh == 1 then
					b, h = read(bhfile,"*n","*n")
				else
					h, b = read(bhfile,"*n","*n")
				end
			end
			closefile(bhfile)
		end
	end

