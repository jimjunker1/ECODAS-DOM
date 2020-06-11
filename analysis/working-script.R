#analysis of Catalan et al. 2016

source("datascript.R")

catalan_2016 <- catalan_2016 %>%
  mutate(residence_yrs =(1/(degrate_perday*365)),
         removal = wrt_yrs/residence_yrs,
         log10_removal = log10(wrt_yrs/residence_yrs))

ggplot(catalan_2016, aes(x = log10(wrt_yrs), y = log10_removal)) + geom_point() +
  geom_hline(yintercept = log10(1))
ggplot(catalan_2016, aes(x = wrt_yrs, y = removal)) + geom_point()
