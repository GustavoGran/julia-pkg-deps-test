module  YieldCurveNss
	
	function __init__()
	
		global mQL = include("quantlib/mQuantLib.jl");
		global mDB = include("odbc/mODBC.jl");
		
		global homeDir = pwd();
		global srcDir = pwd() * "/src"; 
		
		try
			cd("logs");
			cd("..");
		catch err
			mkdir("logs");
		end
		
		global logsDir = pwd() * "/logs";
		
		try
			cd("plots");
			cd("..");
		catch err
			mkdir("plots");
		end
		
		global plotsDir = pwd() * "/plots";
#=		
		println("homeDir : " * homeDir);
		println("logsDir : " * logsDir);
		println("plotsDir : " * plotsDir);=#

	end
	
	function printFolders()
		println("homeDir : " * homeDir);
		println("logsDir : " * logsDir);
		println("plotsDir : " * plotsDir);

	end
end
