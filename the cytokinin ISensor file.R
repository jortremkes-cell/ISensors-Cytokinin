#libraries
library(devtools)
library(Seurat)
pak::pak("MironovaLab/iSensors")
library(iSensors)
library(readxl)
install.packages("openxlsx")
library(openxlsx)
# Load your data
my_data <- read.xlsx("C:/Users/Jortr/OneDrive/Documenten/BIG DATA/ISensors-Cytokinin/Table 1.xlsx", sheet = 2)

# Save the data frame into an .rda file
save(my_data, file = "table 1.rda")
View("table 1.rda")
#make it an seurat object

seurat_obj <- readRDS("C:/Users/Jortr/OneDrive/Documenten/BIG DATA/ISensors-Cytokinin")

#making the panels
Panels <- list(
  CK_ARR_REG_UP = c(),
  CK_ARR_REG_DOWN = c(),

  CK_ARR_TRANS_SIGNAL
)
