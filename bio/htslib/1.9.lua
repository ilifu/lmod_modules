-- -*- lua -*-
help([[
This module configures htslib, bcftools and samtools 1.9
]])
whatis("Version: 1.9")
whatis("Keywords: htslib, bcftools, samtools")
whatis("Description: htslib, bcftools and samtools")

local htslib_image = "/cbio/images/bionic-htslib1.9.simg"

tools = {
  'ace2sam',
  'bcftools',
  'bgzip',
  'blast2sam.pl',
  'bowtie2sam.pl',
  'color-chrs.pl',
  'export2sam.pl',
  'guess-ploidy.py',
  'htsfile',
  'interpolate_sam.pl',
  'maq2sam-long',
  'maq2sam-short',
  'md5fa',
  'md5sum-lite',
  'novo2sam.pl',
  'plot-bamstats',
  'plot-roh.py',
  'plot-vcfstats',
  'psl2sam.pl',
  'run-roh.pl',
  'sam2vcf.pl',
  'samtools',
  'samtools.pl',
  'seq_cache_populate.pl',
  'soap2sam.pl',
  'tabix',
  'varfilter.py',
  'vcfutils.pl',
  'wgsim',
  'wgsim_eval.pl',
  'zoom2sam.pl',
}

-- for i, tool in ipairs(tools) do
--   set_alias(tool, "singularity run --app " .. tool .. " " .. htslib_image )
-- end

prepend_path("PATH", "/cbio/soft/htslib/1.9")
