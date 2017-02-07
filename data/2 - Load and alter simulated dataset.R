## Load simulated dataset and change facility names----

# Load necessary packages
require(dqMonitoring)
require(dplyr)
require(magrittr)

# Load original simulated dataset
data(line_lists)

# To help change the facility names, create a cross table 
# mapping facility names to more generic facility names
line_lists <- rename(line_lists, Source_Temp=Source)
unique_fac <- line_lists %>% distinct(Source_Temp)
fac_cross_table <- data.frame(unique_fac, Source = paste("Source", LETTERS[1:9], sep=" "))

# Merge dataset to get generic name in Source field and drop Source_Temp field
df <- merge(line_lists, fac_cross_table, by="Source_Temp")
df <- df %>% select(-Source_Temp)

# Delete unnecessary objects
remove("fac_cross_table", "line_lists", "unique_fac")
