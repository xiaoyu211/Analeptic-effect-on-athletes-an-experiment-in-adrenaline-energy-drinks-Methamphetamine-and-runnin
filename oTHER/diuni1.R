d1 <- read.csv("C:/Users/Stephen/Desktop/UCLA Winter 2014/Stat 101B/diuni.xlsx")
# try BF[1]
m1 <- aov(time~treatment,data=d1) 
summary(m1)

# CB[1] after blcoking by gender, the power inceased.
m2 <- aov(time~treatment+gender.1,data=d1)
summary(m2)

# if we check the interaction between gender and treatment
with(d1,interaction.plot(treatment,gender.1,time))

plot(m2)