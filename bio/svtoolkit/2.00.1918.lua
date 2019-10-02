-- -*- lua -*-
help([[
This module sets up and configures GenomeStrip version 2.00.1918

For detailed usage instructions, go to:
  http://software.broadinstitute.org/software/genomestrip/documentation
]])
whatis("Version: 2.00.1928")
whatis("Keywords: GenomeStrip, svtoolkit")
whatis("URL: http://software.broadinstitute.org/software/genomestrip/documentation")
whatis("Description: Genome STRiP (Genome STRucture In Populations) is a suite of tools for discovering and genotyping structural variations using sequencing data. The methods are designed to detect shared variation using data from multiple individuals.")

local base = "/cbio/soft/genome-strip/svtoolkit-2.00.1918"

dependencies = {"jdk/1.8.0_211", "slurm-drmaa/1.1.0", "bio/htslib/1.9", "R/3.6.1"}

for i, dependency in ipairs(dependencies) do
  load(dependency)
end
 
setenv(       "SV_DIR", base)
prepend_path( "LD_LIBRARY_PATH", pathJoin(base, "lib"))

jars = {
  pathJoin(base, "/lib/SVToolkit.jar"),
  pathJoin(base, "/lib/gatk/GenomeAnalysisTK.jar"),
  pathJoin(base, "/lib/gatk/Queue.jar"),
}

for i, jar in ipairs(jars) do
  prepend_path( "classpath", jar)
end
