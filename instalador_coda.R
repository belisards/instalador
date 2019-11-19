# Função para carregar e instalar os pacotes necessários para o Coda.Br 2019

instalador <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg)) 
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}

# usage
pacotes <- c("readr", "dplyr", "magrittr", "survey", "readxl", "RCurl", "utils", "timeDate", "PNADcIBGE","haven","tidyverse",
             "ggplot2", "stringr","abjutils")

instalador(pacotes)
