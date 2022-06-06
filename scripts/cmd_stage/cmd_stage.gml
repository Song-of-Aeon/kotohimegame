nu consoleCommand("stage", "stage (stage)", function(args) {
	c_stagegoto(global.currentday, real(args[0])-1, false);
});