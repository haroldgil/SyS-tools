## Download and install necessary packages if you don't already have them----

if("dplyr" %in% rownames(installed.packages()) == FALSE) {install.packages("dplyr", repos='http://cran.us.r-project.org')};
if("stringr" %in% rownames(installed.packages()) == FALSE) {install.packages("stringr", repos='http://cran.us.r-project.org')};
if("magrittr" %in% rownames(installed.packages()) == FALSE) {install.packages("magrittr", repos='http://cran.us.r-project.org')};
if("quantmod" %in% rownames(installed.packages()) == FALSE) {install.packages("quantmod", repos='http://cran.us.r-project.org')};
if("shiny" %in% rownames(installed.packages()) == FALSE) {install.packages("shiny", repos='http://cran.us.r-project.org')};
if("shinydashboard" %in% rownames(installed.packages()) == FALSE) {install.packages("shinydashboard", repos='http://cran.us.r-project.org')};
if("devtools" %in% rownames(installed.packages()) == FALSE) {install.packages("devtools", repos='http://cran.us.r-project.org')};

if("dqMonitoring" %in% rownames(installed.packages()) == FALSE) {download.file(url = "http://www.nwcphp.org/docs/dqmonitoring/dqMonitoring_1.0.tar.gz", destfile = "dqMonitoring_1.0.tar.gz");install.packages("dqMonitoring_1.0.tar.gz", repos = NULL)};

require(devtools)
if("rCharts" %in% rownames(installed.packages()) == FALSE) {install_github('ramnathv/rCharts')};
