# EM-for-Gaussian-Mixture-2020
Final project for ST541 Probability, Computing, and Simulation in Statistics (PCS) at OSU

EM (Expectation-Maximization) Algorithm with An Application for Gaussian Mixture Model

Frances Lin

## Description

Expand the E-step and the M-step of the EM algorithm in the context of the Gaussian mixture model, apply the algorithm to a simulated dataset that follows a two-component Gaussian mixture distribution, and evaluate its performance. 

## Documentation

[Lin_ST541_Project_FULL](https://github.com/franceslinyc/EM-for-Gaussian-Mixture-2020/blob/main/analysis/Lin_ST541_Project_FULL.pdf) contains the full report.

[Lin_ST541_Project](https://github.com/franceslinyc/EM-for-Gaussian-Mixture-2020/blob/main/analysis/Lin_ST541_Project.pdf) is an abridged version of the full report.

## Order of Running

00_simulated_data contains codes that simulate data

01_initialization_kmeans contains codes that run K-means clustering

02_EM_step contains drafts of the functions and can be skipped. Instead, descriptions, codes, and usages of the functions can be found at e_step and m_step in the R folder

03_EM_iteration contains codes that iterate between the E-step and the M-step and check for convergence

04_Reporting contains codes that produce the (abridged) report

05_Presentation contains codes that produce slides for the [presentation](https://github.com/franceslinyc/EM-for-Gaussian-Mixture-2020/blob/main/analysis/05_Presentation.pdf)

06_Appendix contains a rough sketch of the implementation in words
