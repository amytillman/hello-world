
## Let's do R together!!

# want to learn the tidyverse together??

# Pulling some code to start from here :  http://www.storybench.org/getting-started-with-tidyverse-in-r/
# This is just the tippity tip of the iceberg!

suppressWarnings(suppressMessages(install.packages("tidyverse")))
suppressWarnings(suppressMessages(library(tidyverse)))
suppressWarnings(suppressMessages(library(magrittr)))


library(tidyr)
library(tibble)

key_value <- tribble(
  ~row, ~key1, ~key2, ~key3, # These are the names of the columns (indicated with ~)
  "1", "1_value_1","1_value_2","1_value_3", # Row 1
  "2", "2_value_1", "2_value_2", "2_value_3", # Row 2
  "3", "3_value_1", "3_value_2", "3_value_3" # Row 3
)
key_value

kv_gathered <- key_value %>% 
  gather(key, # this will be the new column for the 3 key columns
         value, # this will contain the 9 distinct values
         key1:key3, # this is the range of columns we want gathered
         na.rm = TRUE # handles missing
  )
kv_gathered

kv_spreaded <- kv_gathered %>% 
  spread(
    key, 
    value
  )
kv_spreaded
