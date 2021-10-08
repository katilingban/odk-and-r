################################################################################
#
# Exercise 2: Retrieving data from ONA using odkr package
#
# This exercise is for retreiving data from ONA using the odkr package. You
# now have access to a testing ONA server with the account name validtrial with
# a form called Test Server. You can access this account using your own ONA
# account. Using this and using the documentation available from the odkr
# package (see https://github.com/rapidsurveys/odkr), show R code that will
# retrieve the data from the Test Server form.
#
################################################################################

## Load odkr package -----------------------------------------------------------
if (!require(odkr)) remotes::install("rapidsurveys/odkr")

# Retrieve Test Server data