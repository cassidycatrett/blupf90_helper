## Creating BLUPF90 Data files

# When preparing to run analyses in BLUPF90, data files need to be formatted in 
  # accordance with the software specifications.

# Formatting must haves
  # Space delimited columns
  # No column names
  # Remove any NA values from any column to be included in the analysis
  # If the phenotype is categorical, the number 0 cannot be a phenotype. GIBBSF90+
    # will recognize this as missing.

# Files needed for BLUPF90 analyses
  # Pedigree file
  # Phenotype file
  # SNP file for genomic analyses
  # SNP Map file if conducting an ssGWAS

# To create univariate phenotype files

library(tidyverse)

your_phenotype <- df |> 
  select(animal, effect1, effect2, your_phenotype) |> 
  na.omit()

# Edit this to include all effects you are including in your model

write_delim(your_phenotype, "path/to/directory/your_phenotype.dat", delim = " ",
            col_names = FALSE)

# To create bivariate phenotype files

library(tidyverse)

your_phenotype <- df |> 
  select(animal, effect1, effect2, phenotype1, phenotype2) |> 
  na.omit()

# Edit this to include all effects you are including in your model

write_delim(phenotype1_phenotype2, "path/to/directory/phenotype1_phenotype2.dat", delim = " ",
            col_names = FALSE)

# NOTE: choose your phenotype or phenotypes to be the last columns of the data file.
  # This will make it easier when filling in parameter files for the BLUPF90 software.
  
