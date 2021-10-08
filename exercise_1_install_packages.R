################################################################################
#
# Exercise 1: Install odkr and okapi packages in R
#
# This exercise is the most basic and simplest. Install the odkr and okapi
# packages in your R installation in your own local machines. Following is the
# basic code to make this happen.
#
################################################################################

## Install odkr package - see https://github.com/rapidsurveys/odkr -------------

# Install remotes package (to be able to install R packages from GitHub)
if (!require(remotes)) install.packages("remotes")

# Install odkr package
if (!require(odkr)) remotes::install_github("rapidsurveys/odkr")


## Install okapi package - see https://github.com/rapidsurveys/okapi -----------

# Install okapi package
if (!require(okapi)) remotes::install_github("rapidsurveys/okapi")



