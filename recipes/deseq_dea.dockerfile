FROM rocker/tidyverse:4.4

# This dockerfile will make an environment to run DEAs with DESeq2
# It has the tidyverse, our DeNumerator, BiocManager, devtools and more.

RUN Rscript --vanilla -e "install.packages(c('BiocManager', 'devtools'), repos='https://cloud.r-project.org')" && \
    Rscript --vanilla -e "BiocManager::install('DESeq2')" && \
    Rscript --vanilla -e "devtools::install_github('TCP-Lab/DeNumerator', ref = 'v0.1.2', upgrade='never')"
