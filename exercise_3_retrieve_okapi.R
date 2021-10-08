################################################################################
#
# Exercise 3: Retrieving data from ONA using okapi package
#
# This exercise is for retreiving data from ONA using the okapi package. You
# now have access to a testing ONA server with the account name validtrial with
# a form called Test Server. You can access this account using your own ONA
# account. Using this and using the documentation available from the okapi
# package (see https://github.com/rapidsurveys/okapi), show R code that will
# retrieve the data from the Test Server form.
#
################################################################################

## Load okapi package -----------------------------------------------------------
if (!require(okapi)) remotes::install("rapidsurveys/okapi")

# Retrieve Test Server data