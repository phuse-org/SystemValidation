

capture.output({R.home()}, file = "outputs/Rhome.txt")
capture.output({.libPaths()}, file = "outputs/libLoc.txt")
capture.output({R.version}, file = "outputs/RVersion.txt")
capture.output({sessionInfo()}, file = "outputs/sessionInfo.txt")
capture.output({.Platform}, file = "outputs/platform.txt")
capture.output({.Machine}, file = "outputs/machine.txt")
capture.output({capabilities()}, file = "outputs/capabilities.txt")
capture.output({search()}, file = "outputs/searchPath.txt")