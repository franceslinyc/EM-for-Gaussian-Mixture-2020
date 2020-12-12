#' E-step: Calculate posterior probability (or soft labelling) to pass it to M-step using Bayes Rule and obtain log likelihood to check for convergence
#'
#' @param x Data (or observations)
#' @param mu Initial (or current) estimate vector
#' @param sd Initial (or current) estimate vector
#' @param pi Initial (or current) estimate vector
#'
#' @return posterior_prob Return posterior probability vector
#' @return log_likelihood Return (current) log likelihood 
#' @export
#'
#' @examples e_step(x = data$value, mu = df$mean, sd = df$sd, pi = df$pi)

e_step <- function(x, mu, sd, pi){
  # top of the posterior equation (or incomplete likelihood and prior probability)
  prob_1 <- dnorm(x, mu[1], sd[1]) * pi[1] 
  prob_2 <- dnorm(x, mu[2], sd[2]) * pi[2] 
  
  # bottom of the posterior equation (or normalizing constant)
  normalizer <- prob_1+ prob_2
  
  # posterior probability
  post_1 <- prob_1 / normalizer
  post_2 <- prob_2 / normalizer
  
  # log likelihood
  #likelihood <- prob_1 + prob_2
  #log_likelihood <- log(prob_1 + prob_2)
  result <- sum(log(prob_1 + prob_2)) #result <- sum(log(normalizer))
  
  # return log likelihood and posterior probability
  list(
    "log_likelihood" = result,
    "posterior_prob" = cbind(post_1, post_2)
  )
}

# Recall that we want to set 
# x = data$value for cluster 1 for example 
# mu = df$mean[1]
# sd = df$sd[1]
# pi = df$pi[1] 

#e_step(x = data$value, mu = df$mean, sd = df$sd, pi = df$pi)
#E_step <- e_step(x = data$value, mu = df$mean, sd = df$sd, pi = df$pi)
#E_step




# E-step
#
# At the beginning of E-step, we pass
# 1. x = data$value --- results from 00_simulated_data
# 2. mu = df$mean   --- results from 01_initialization_kmeans
# 3. sd = df$sd
# 4. pi = df$pi 
# 
# At the end of E-step, we return 
# 1. log likelihood for checking convergence 
# 2. prior probability for M-step

