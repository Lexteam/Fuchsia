import std.stdio;

void main(string[] args) {
	if (args.length == 1) {
        writeln("Usage: fushsia <command> [options...]");
        writeln("where the possible options are:");
        writeln("   version               Displays the version information.");
        writeln("   init [license] [lang] Installs everything.");
        writeln("   license [mit|apache2] Installs the license to the current directory.");
        writeln("   gitignore [lang]      Installs a gitignore.");
        writeln("   gitattributes [lang]  Installs a gitattributes.");
    } else {
        if (args[1] == "version") {
            writeln("fushsia 1.0.0-indev");
        } else if (args[1] == "init") {
            string license = "mit";
            string lang = "java";
            
            if (args.length >= 3) {
                license = args[2];
            }
            if (args.length >= 4) {
                lang = args[3];
            }
            
            installLicense(license);
            installGitignore(lang);
            installGitattributes(lang);
        } else if (args[1] == "license") {
            string license = "mit";
            
            if (args.length >= 3) {
                license = args[2];
            }
            
            installLicense(license);
        } else if (args[1] == "gitignore") {
            string lang = "java";
            
            if (args.length >= 3) {
                lang = args[2];
            }
            
            installGitignore(license);
        } else if (args[1] == "gitattributes") {
            string lang = "java";
            
            if (args.length >= 3) {
                lang = args[2];
            }
            
            installGitattributes(license);
        }
    }
}

void installLicense(string license) {
    writefln("Installing %s license.", license);
}

void installGitignore(string lang) {
    writefln("Installing %s gitignore.", lang);
}

void installGitattributes(string lang) {
    writefln("Installing %s gitattributes.", lang);
}
