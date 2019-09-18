-- -*- lua -*-
help([[
This module sets up and configures JDK 11.0.2
]])
whatis("Version: 11.0.2")
whatis("Keywords: JAVA, JDK")
whatis("Description: Java Development Kit")

local base = "/cbio/soft/jdk-11.0.2"

setenv("JAVA_HOME", base)
prepend_path( "PATH", pathJoin(base, "bin"))
