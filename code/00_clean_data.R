#add code here
#---- Read raw data -------
here::i_am("code/00_clean_data.R")

f75_raw <- read_csv(
  here("data", "raw", "f75_interim.csv"),
  na = c("", "NA")
)

#---- Make readable labels -------
var_labels <- c(
  agemons = "Age (months)", sex = "Sex", site = "Study site",
  caregiver = "Caregiver", bfeeding = "Breastfeeding",
  hiv_results = "HIV status", kwash = "Kwashiorkor",
  oedema = "Oedema at admission", diarrhoea = "Diarrhoea at admission",
  sev_pneumonia = "Severe pneumonia", malaria = "Malaria", shock = "Shock",
  cerebral_palsy = "Cerebral palsy", weight = "Weight (kg)",
  height = "Height/length (cm)", muac = "MUAC (cm)",
  days_stable = "Days to stabilization", final_outcome = "Final outcome",
  arm = "Treatment arm"
)

#---- Make readable labels -------
dir.create(here("data"), recursive = TRUE, showWarnings = FALSE)
saveRDS(f75_clean, here("data", "f75_clean.rds"))