# fix haz name
obj_names <- load("st_haz_vel_rf.Rdata")
names(d)[names(d)=="y_rate"] <- "y_rate_haz"
Y <- "y_rate_haz"
save(list=obj_names, file="st_haz_vel_rf_corrected.Rdata")
rm(list=ls())

# fix len name
obj_names <- load("st_len_vel_rf.Rdata")
names(d)[names(d)=="y_rate"] <- "y_rate_len"
Y <- "y_rate_len"
save(list=obj_names, file="st_len_vel_rf_corrected.Rdata")
rm(list=ls())
