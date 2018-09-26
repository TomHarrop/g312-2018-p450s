#!/usr/bin/env Rscript

library(data.table)

cn <- c("target_name",
        "target_accession",
        "query_name",
        "query_accession",
        "full_E-value",
        "full_score",
        "full_bias",
        "domain_E-value",
        "domain_score",
        "domain_bias",
        "domain_no_exp",
        "domain_no_reg",
        "domain_no_clu",
        "domain_no_ov",
        "domain_no_env",
        "domain_no_dom",
        "domain_no_rep",
        "domain_no_inc",
        "description_of_target")


hmmer_results_files <- list.files("output/hmmer", pattern = "_hits.txt", full.names = TRUE)
names(hmmer_results_files) <- gsub("[^[:digit:]]+", "", basename(hmmer_results_files))

hmmer_results_list <- lapply(hmmer_results_files, function(x)
    fread(paste('grep -v "^#"', x), select = 1:19, col.names = cn))

hmmer_results <- rbindlist(hmmer_results_list, idcol = "reading_frame")
p450_reads <- unique(hmmer_results[`full_E-value` < 0.01, .(target_name)])

fwrite(p450_reads, "output/hmmer/p450_reads.txt", col.names = FALSE)

