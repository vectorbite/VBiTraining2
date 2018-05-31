##library(truncnorm)
library(IDPmisc)
library('rjags')
source("../code/temp_functions.R")
source("../code/mcmc_utils.R")

## Data


##lb_ab isolate
dt<-read.csv("../data/lb_ab_temps.csv")


names(d2)[10]<-"OD.SUB"
names(d2)[9]<-"NC.AVG"

n.chains<-5

d2<-dt[which(dt$EXP==2),]

w.5<-which(d2$TEMP==5)
w.12<-which(d2$TEMP==12)
w.21<-which(d2$TEMP==21)
w.28<-which(d2$TEMP==28)

##color vectors
t.col2<-c( rep(1, length(which(dt$TEMP[dt$EXP==2]==5))),
          rep(2, length(which(dt$TEMP[dt$EXP==2]==12))),
          rep(3, length(which(dt$TEMP[dt$EXP==2]==21))),
          rep(4, length(which(dt$TEMP[dt$EXP==2]==28)))  )



plt<-F
#############################################################
#############################################################
### T=5 C
### logistic
jags.5 <- jags.model('jags-logistic.bug',
                    data = list('Y' = d2$OD[w.5], 't' = d2$DAY[w.5]-1,
                      'N'=length(d2$OD[w.5])), n.chains = n.chains,
                   inits=list(Y0=0.1, K=0.4, r=0.1), n.adapt = 1000) 
 
#samps <- jags.samples(jags, c('c1','lb'), 1000)
coda.samps5 <- coda.samples(jags.5, c('Y0', 'K', 'r', 'sigma'), 5000)



#############################################################
#############################################################
### T=12 C

jags.12 <- jags.model('jags-logistic.bug',
                    data = list('Y' = d2$OD[w.12], 't' = d2$DAY[w.12]-1,
                      'N'=length(d2$OD[w.12])), n.chains = n.chains,
                   inits=list(Y0=0.1, K=0.4, r=0.1), n.adapt = 1000) 
 
#samps <- jags.samples(jags, c('c1','lb'), 1000)
coda.samps12 <- coda.samples(jags.12, c('Y0', 'K', 'r', 'sigma'), 5000)



#############################################################
#############################################################
### T=21 C

jags.21 <- jags.model('jags-logistic.bug',
                    data = list('Y' = d2$OD[w.21], 't' = d2$DAY[w.21]-1,
                      'N'=length(d2$OD[w.21])), n.chains = n.chains,
                   inits=list(Y0=0.1, K=0.4, r=0.1), n.adapt = 1000) 
 
#samps <- jags.samples(jags, c('c1','lb'), 1000)
coda.samps21 <- coda.samples(jags.21, c('Y0', 'K', 'r', 'sigma'), 5000)



#############################################################
#############################################################
### T=28 C

jags.28 <- jags.model('jags-logistic.bug',
                    data = list('Y' = d2$OD[w.28], 't' = d2$DAY[w.28]-1,
                      'N'=length(d2$OD[w.28])), n.chains = n.chains,
                   inits=list(Y0=0.1, K=0.4, r=0.1), n.adapt = 1000) 
 
#samps <- jags.samples(jags, c('c1','lb'), 1000)
coda.samps28 <- coda.samples(jags.28, c('Y0', 'K', 'r', 'sigma'), 5000)




#############################################################
#############################################################
### Save all the results:


save(coda.samps5, coda.samps12, coda.samps21, coda.samps28, file="lb_ab_codasamps_Y0.RSave")




#############################################################
#############################################################
### Here's the code to make all the plots


if(plt){
  ## these first few bits are all that need to be changed for each plot
  plot(coda.samps5, ask=TRUE)
  w<-w.5
  my.ylim<-c(0, 0.6)
  my.title<-"LB-AB isolate, T=5C, logistic fit, Y0 est"
  samps<-make.logistic.samps(coda.samps5, nchains=n.chains,
                             samp.lims=c(151, 5000), Y.0=TRUE)
  ##samps$tau<-1/samps$sigma^2
  ##samps$Y0<-rep(0.1, length(samps$tau))
  
  priors<-list()
  priors$names<-c("Y0", "K", "r","sigma")
  priors$fun<-c("uniform", "uniform", "exp","exp")
  priors$hyper<-matrix(NA, ncol=4, nrow=3)
  priors$hyper[,1]<-c(0.09, 0.15, NA)
  priors$hyper[,2]<-c(0.01,  0.6, NA)
  priors$hyper[,3]<-c(1000, NA, NA) 
  priors$hyper[,4]<-c(0.1, NA, NA)
  plot.hists(samps[,c(1:4)], my.par=c(2,2), n.hists=4, priors=priors)
  
  quartz()
  Temps<-seq(0,max(d2$DAY[w])-1, by=0.05)
  mycol<-1 ##c(rep(1, 5), rep(2, 6), rep(3, 4), rep(4, 12))
  plot(d2$DAY[w]-1, d2$OD[w], xlim=c(0,max(Temps)), ylim=my.ylim,
       pch=(mycol+20),
       xlab="time (days)", ylab="",
       main=my.title,
       col=t.col2[w], cex=1.5)
  
  thinned<-seq(1, dim(samps)[1], by=10)
  out<-make.sims.temp.resp(sim="logistic", samps[,c(1,2,3)], Temps, thinned=thinned)
  q<-temp.sim.quants(out$fits, length(Temps))
  q2<-deb.sim.quants.LN(out$fits, samps$sigma[thinned], length(Temps), length(thinned), byCol=TRUE, probs=c(0.025, 0.975))
  
  add.sim.lines(Temps, sim.data=out$fits, q=q, q2=q2)
  
  quartz()
  ipairs(samps[,c(1:4)], ztransf = function(x){x[x<1] <- 1; log2(x)})
  
}







if(plt){
  s5<-make.logistic.samps(coda.samps5, nchains=n.chains,
                          samp.lims=c(151, 5000), Y.0=FALSE)
  s12<-make.logistic.samps(coda.samps12, nchains=n.chains,
                           samp.lims=c(151, 5000), Y.0=FALSE)
  s21<-make.logistic.samps(coda.samps21, nchains=n.chains,
                           samp.lims=c(151, 5000), Y.0=FALSE)
  s28<-make.logistic.samps(coda.samps28, nchains=n.chains,
                           samp.lims=c(151, 5000), Y.0=FALSE)
  
  T<-c(5, 12, 21, 28)
  r<-cbind(s5$r, s12$r, s21$r, s28$r)
  K<-cbind(s5$K, s12$K, s21$K, s28$K)
  
  r.mcmc<-mcmc(r)
  hpd.r<-HPDinterval(r.mcmc)
  K.mcmc<-mcmc(K)
  hpd.K<-HPDinterval(K.mcmc)
  
  par(mfrow=c(1,2), bty="n")
  plot(T, colMeans(r), type="l", ylim=c(0.08,0.12), xlim=c(5,30), ylab="r", xlab="Temperature (C)", main="UM isolate, logistic fit, r, Y0 est")
  points(T, colMeans(r), pch=19)
  lines(T, hpd.r[,1], col=2, lty="dashed")
  lines(T, hpd.r[,2], col=2, lty="dashed")
  plot(T, colMeans(K), type="l", ylim=c(0.05,0.6), xlim=c(5,30),ylab="K", xlab="Temperature (C)", main="UM isolate, logistic fit, K, Y0 est")
  points(T, colMeans(K), pch=19)
  lines(T, hpd.K[,1], col=2, lty="dashed")
  lines(T, hpd.K[,2], col=2, lty="dashed")
  
}


