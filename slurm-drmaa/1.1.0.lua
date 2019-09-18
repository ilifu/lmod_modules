-- -*- lua -*-
help([[
This module configures slurm-drmaa 1.1.0
]])
whatis("Version: 1.1.0")
whatis("Keywords: slurm, drmaa")
whatis("Description: Slurm DRMAA")

local base = "/cbio/soft/slurm-drmaa"

prepend_path( "PATH", pathJoin(base, "bin"))
prepend_path("LD_LIBRARY_PATH", pathJoin(base, "lib"))
prepend_path("INCLUDE", pathJoin(base, "include"))
prepend_path("DRMAA_LIBRARY_PATH", pathJoin(base, "lib/libdrmaa.so.1"))
