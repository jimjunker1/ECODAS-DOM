source("install-packages.R")
csvs <- list.files(path = "./data/raw/", "*.csv", full.names = TRUE)
catalan_2016 <- lapply(csvs, read_csv) %>% data.frame %>% rename(wrt_yrs = "Water.Retention.Time..years.",
                                                                 degrate_perday = "Degradation.rate.temperature.corrected..d.1.") %>%
  select(-X12)
