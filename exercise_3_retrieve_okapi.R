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

## Load okapi package ----------------------------------------------------------
if (!require(okapi)) remotes::install("rapidsurveys/okapi")


## Retrieve Test Server data ---------------------------------------------------

# STEP 1: Authenticate with ONA

# Authenticate with username and password
ona_auth_password(username = "ENTER_YOUR_USERNAME", 
                  password = "ENTER_YOUR_PASSWORD")

# Authenticate with ONA token
ona_auth_token(token = "ENTER_YOUR_TOKEN")

# Set system environment variables for ONA authentication credentials

Sys.getenv()  ## Retrieve environment variables

Sys.setenv(ONA_USERNAME = "ENTER_YOUR_USERNAME")
Sys.setenv(ONA_PASSWORD = "ENTER_YOUR_PASSWORD")
Sys.setenv(ONA_TOKEN = "ENTER_YOUR_TOKEN")


# STEP 2: List the forms you have access to in ONA
ona_list_data()                        ## Default parameters used

ona_list_data(auth_mode = "password")  ## authenticate using password


# STEP 3: Retrieve the needed form
ona_get_data(form_id = 276175)         ## Access form with id 276175


#
ona_get_data(form_id = ona_list_data()$id[ona_list_data()$id_string == "stakeholders"])

id <- ona_list_data() %>%
  dplyr::filter(id_string == "stakeholders") %>%
  dplyr::select(id)

ona_get_data(form_id = id)


