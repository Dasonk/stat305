library(reshape2)


pred <- function(pars){
	pars[1] + pars[2]*tips$total_bill
}

squarederror <- function(pars){
	sum((tips$tip - pred(pars))^2)
}
squaredPars <- optim(c(0,.16), squarederror)$par

tenpowererror <- function(pars){
	sum((tips$tip - pred(pars))^10)
}
tenpowerPars <- optim(c(0,.16), tenpowererror)$par

meanabsoluteerror <- function(pars){
	sum(abs(tips$tip - pred(pars)))
}
meanabsolutePars <- optim(c(0, .16), meanabsoluteerror)$par


weightederror <- function(pars){
	sum(1/sqrt(tips$total_bill) * (tips$tip - pred(pars))^2)
}
weightedPars <- optim(c(0, .16), weightederror)$par

# better to underpredict?
underpredicterror <- function(pars){
	preds <- pred(pars)
	resids <- tips$tip - preds
	sum(ifelse(resids < 0, -5*resids, resids))
}
underpredictPars <- optim(c(0, .16), underpredicterror)$par

withincutofferror <- function(pars, cutoff = 1){
	resids <- tips$tip - pred(pars)
	sum(ifelse(abs(resids) < cutoff, 0, 1))
}
withinonePars <- optim(c(0, .16), withincutofferror)$par
withinp25Pars <- optim(c(0, .16), withincutofferror, cutoff = .25)$par


regression <- lm(tip ~ total_bill, data = tips)

plot(tips$total_bill, tips$tip)
abline(squaredPars)
abline(tenpowerPars, col = "orange")
abline(weightedPars, col = "red")
abline(meanabsolutePars, col = "blue")
abline(underpredictPars, col = "purple")

plot(tips$total_bill, tips$tip)
abline(withinonePars, col = "purple")
abline(withinonePars + c(1,0), col = "purple", lty = 2)
abline(withinonePars + c(-1,0), col = "purple", lty = 2)
abline(withinp25Pars, col = "red")
abline(withinp25Pars + c(.25,0), col = "red", lty = 2)
abline(withinp25Pars + c(-.25,0), col = "red", lty = 2)