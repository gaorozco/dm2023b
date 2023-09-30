# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-inicial/CA_reparar_dataset_02.r")
source("~/dm2023b/src/workflow-inicial/DR_corregir_drifting_02.r")
source("~/dm2023b/src/workflow-inicial/FE_historia_02.r")
source("~/dm2023b/src/workflow-inicial/TS_training_strategy_02.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-inicial/HT_lightgbm_02.r")
source("~/dm2023b/src/workflow-inicial/ZZ_final_02.r")
