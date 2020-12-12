#' M-step: Replace hard labelling with posterior probability (or soft labelling) and optimize the parameters using MLE and return the final estimates if convergence happens
#'
#' @param x Data (or observations)
#' @param posterior Posterior probability vector from e_step() 
#'
#' @return mu Current (or final) estimate vector
#' @return sd Current (or final) estimate vector
#' @return pi Current (or final) estimate vector
#' @export
#'
#' @examples m_step(x = data$value, posterior = E_step$posterior_prob)

m_step <- function(x, posterior){
  # Replace with posterior probability and
  # Obtain mean using MLE
  mean_1 <- sum(posterior[, 1] * x) / sum(posterior[, 1])
  mean_2 <- sum(posterior[, 2] * x) / sum(posterior[, 2])
  
  # Obtain variance
  var_1 <- sum(posterior[, 1] * (x - mean_1) ^ 2) / sum(posterior[, 1])
  var_2 <- sum(posterior[, 2] * (x - mean_2) ^ 2) / sum(posterior[, 2])
  
  # Obtain pi
  pi_1 <- sum(posterior[, 1]) / length(x)
  pi_2 <- sum(posterior[, 2]) / length(x)
  
  # Return parameters (mu, sd, pi)
  list(
    "mu" = c(mean_1, mean_2),
    "sd" = c(sqrt(var_1), sqrt(var_2)),     # store sd instead of var
    "pi" = c(pi_1, pi_2)
  ) 
}

#m_step(x = data$value, posterior = E_step$posterior_prob)
#M_step <- m_step(x = data$value, posterior = E_step$posterior_prob) 
#M_step




# M-step
#
# At the beginning of E-step, we pass
# 1. x = data$value --- results from 00_simulated_data
# 2. posterior_prob --- results from e_step()
# 
# At the end of M-step, we return 
# 1. mu current
# 2. sd current
# 3. pi current

