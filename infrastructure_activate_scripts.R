
write_csv_output<-c("yes","no")[1]
gpx_path<- "02_latrine_coding/01_data_collection/05_gpx/WaypointsAll_07.11.2019.gpx"
day_to_run<- Sys.Date()-4
rmarkdown::render('Infrastsructure_Coding_DailyMonitoringReport.Rmd')
# ksource("Infrastsructure_Coding_DailyMonitoringReport.Rmd")

original_path<-"D:\\mh1\\REACH\\01_WASH_Infrastructure_coding"
original_name<-"Infrastsructure_Coding_DailyMonitoringReport.html"
dropbox_path<-"C:\\Users\\MEHEDI\\Dropbox\\REACH_BGD\\REACH\\Ongoing\\70DQP - UNICEF WASH 2019\\01_WASH_infrastructure_coding\\02_Bathing_and_latrines\\02 Data collection and checking"


date_prefix<-stringr::str_replace_all(day_to_run, "-", "")
name_base<- "_Sanitation_Coding_DailyMonitoringReport.html"
new_name<-paste0(date_prefix,name_base)

file.copy(from = "Infrastsructure_Coding_DailyMonitoringReport.html", to =paste0("C:\\Users\\MEHEDI\\Dropbox\\REACH_BGD\\REACH\\Ongoing\\70DQP - UNICEF WASH 2019\\01_WASH_infrastructure_coding\\02_Bathing_and_latrines\\02 Data collection and checking\\", new_name))


