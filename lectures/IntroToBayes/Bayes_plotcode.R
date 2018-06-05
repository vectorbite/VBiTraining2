
x<-seq(0,1, length=100)
plot(x, dbeta(x, 2, 20), type="l", col="grey", xlab="", ylab="density", lwd=3, ylim=c(0,15), bty="l")
lines(x, dbeta(x, 2, 40), lwd=3)
legend("topright", c("posterior (y=0)", "prior"), col=c("black", "grey"), lwd=3, bty="n")

dev.copy2pdf(file="beta_bin_posterior.pdf")


x<-seq(0,1, length=1000)

n<-20
y<-1

a1<-1
b1<-1

a2<-15
b2<-20

par(mfrow=c(1,3), bty="l")
plot(x, dbeta(x, a1, b1), type="l", col="grey", xlab="", ylab="density", lwd=3,
     ylim=c(0,13), bty="l")
lines(x, dbeta(x, a1+y, b1+n-y), lwd=3)
legend("topright", c("posterior (y=1, n=20)", "prior (a=1, b=1)"),
       col=c("black", "grey"), lwd=3, bty="n")
abline(v=(a1+y)/(a1+b1+n), col=2, lty=2)

plot(x, dbeta(x, a2, b2), type="l", col="grey", xlab="", ylab="density", lwd=3,
     ylim=c(0,13), bty="l")
lines(x, dbeta(x, a2+y, 21+n-y), lwd=3)
legend("topright", c("posterior (y=1, n=20)", "prior (a=15, b=20)"),
       col=c("black", "grey"), lwd=3, bty="n")
abline(v=(a2+y)/(a2+b2+n), col=2, lty=2)


plot(x, dbeta(x, a2, b2), type="l", col="grey", xlab="", ylab="density", lwd=3,
     ylim=c(0,13), bty="l")
lines(x, dbeta(x, a2+5*y, 21+5*n-5*y), lwd=3)
legend("topright", c("posterior (y=5, n=100)", "prior (a=15, b=20)"),
       col=c("black", "grey"), lwd=3, bty="n")
abline(v=(a2+5*y)/(a2+b2+5*n), col=2, lty=2)


