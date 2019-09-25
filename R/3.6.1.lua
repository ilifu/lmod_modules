-- -*- lua -*-
help([[
This module configures R 3.6.1
]])
whatis("Version: 3.6.1")
whatis("Keywords: R, RStudio, Rscript")
whatis("Description: R statistics package")

local singularity_image = "/cbio/images/bionic-R3.6.1-RStudio1.2.1335-bio.simg"

setenv ("R_INSTALL_STAGED" ,"false")

apps = {
  "R",
  "Rscript",
  "rserver",
}

for i, app in ipairs(apps) do
  set_alias(app, "singularity run --app " .. app .. " " .. singularity_image)
end
