-- -*- lua -*-
help([[
This module configures htslib and bcftool 1.9
]])
whatis("Version: 1.9")
whatis("Keywords: htslib, bcftools")
whatis("Description: htslib and bcftools")

local htslib_image = "/cbio/images/bionic-htslib1.9.simg"

tools = {'bcftools', 'bgzip', 'color-chrs.pl', 'guess-ploidy.py', 'htsfile', 'plot-roh.py', 'plot-vcfstats', 'run-roh.pl', 'tabix', 'vcfutils.pl'}

for i, tool in ipairs(tools) do
  set_alias(tool, "singularity run --app " .. tool .. " " .. htslib_image )
end
