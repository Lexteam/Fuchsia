import std.stdio;

void main(string[] args) {
	if (args.length == 1) {
        writeln("Usage: fushsia <command> [options...]");
        writeln("where the possible options are:");
        writeln("   -version        Displays the version information.");
    } else {
        if (args[1] == "-version") {
            writeln("fushsia 1.0.0-indev");
        }
    }
}
