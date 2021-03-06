### R code from vignette source 'multipol.Rnw'

###################################################
### code chunk number 1: setup
###################################################
ignore <- require(multipol)
ignore <- require(polynom)


###################################################
### code chunk number 2: polyIntro
###################################################
require(polynom)
(p <- polynomial(c(1,0,0,3,4)))
str(p)


###################################################
### code chunk number 3: polyOps
###################################################
p + polynomial(1:2)
p*p


###################################################
### code chunk number 4: polyFunc
###################################################
f1 <- as.function(p)
f1(pi)
f1(matrix(1:6,2,3))


###################################################
### code chunk number 5: set_showarray
###################################################
options("showchars" = FALSE)


###################################################
### code chunk number 6: define_a
###################################################
require(multipol)
(a <- as.multipol(matrix(1:10,nrow=2)))


###################################################
### code chunk number 7: a_plus_b
###################################################
b <-  as.multipol(matrix(1:10,ncol=2))
a+b


###################################################
### code chunk number 8: a_times_b
###################################################
a * b


###################################################
### code chunk number 9: coerce_to_function
###################################################
f2 <- as.function(a*b)


###################################################
### code chunk number 10: execute_f2
###################################################
f2(c(x=1,y=3i))


###################################################
### code chunk number 11: showExtraction
###################################################
a[0:1,0:1]


###################################################
### code chunk number 12: show_replacement_method
###################################################
a[0,0] <- -99
a


