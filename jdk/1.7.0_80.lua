-- -*- lua -*-
help([[
This module sets up and configures JDK 1.7.0_80
]])
whatis("Version: 1.7.0_211")
whatis("Keywords: JAVA, JDK")
whatis("Description: Java Development Kit")

local base = "/cbio/soft/jdk1.7.0_80"

setenv("JAVA_HOME", base)
prepend_path("PATH", pathJoin(base, "bin"))
prepend_path("LD_LIBRARY_PATH", pathJoin(base, "jre/lib/amd64/server"))
prepend_path("LD_LIBRARY_PATH", pathJoin(base, "jre/lib/amd64"))
prepend_path("CLASSPATH", pathJoin(base, "lib"))
prepend_path("CLASSPATH", pathJoin(base, "jre/lib"))
prepend_path("LD_LIBRARY_PATH", pathJoin(base, "jre/lib"))
