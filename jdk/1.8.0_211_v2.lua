-- -*- lua -*-
help([[
This module sets up and configures JDK 1.8.0_211
]])
whatis("Version: 1.8.0_211")
whatis("Keywords: JAVA, JDK")
whatis("Description: Java Development Kit")

local base = "/cbio/soft/jdk1.8.0_211_v2"

prepend_path("PATH", base)
