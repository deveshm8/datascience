#Q1
calamities<-read.csv("C:/Users/user/Desktop/Rprac/Calamities.csv")
print(calamities)

#Q2
nrow(calamities)

#Q3
View(calamities)

#Q4
data<-read.table("C:/Users/user/Desktop/Rprac/Calamities.csv", sep=",")
print(data)

#Q6
c_13=subset.data.frame(calamities,calamities['YEAR_']==2013)
head(c_13)
c_14=subset.data.frame(calamities,calamities['YEAR_']==2014)
head(c_14)
c_15=subset.data.frame(calamities,calamities['YEAR_']==2015)
head(c_15)
plot(c_13$STATE)
plot(c_14$STATE)
plot(c_15$STATE)

#Q7
calamities$START_DATE
calamities$END_DATE

#Q8
c_15_500acre =subset.data.frame(c_15,c_15$AREA_AFFECTED.in.ACRES.>500)
print(c_15_500acre)

#Q9
calamities_subset=calamities[,c("ID","COMPANY","UNIT")]
print(calamities_subset)
names(calamities_subset)[names(calamities_subset)=="ID"]="unique_Id"
names(calamities_subset)[names(calamities_subset)=="COMPANY"]="enterprise"
names(calamities_subset)[names(calamities_subset)=="UNIT"]="unit"
head(calamities_subset)

#Q10
c_sort=calamities[order(calamities$ID),]
head(c_sort)

#Q11
View(calamities)

#Q12
calamities$day_of_year= weekdays(as.Date(calamities$START_DATE,format="%m/%d/%y"))
head(calamities)

#Q13
calamities$Decades=(calamities$YEAR_%% 100)-((calamities$YEAR_%%100)%%10)
print(Decades)
#Q14
c_grouping=group_by(calamities,Decades)
print(c_grouping)

#Q15
View(calamities,Decades)

#Q16
plot(c_grouping$Decades)

#Q17
t.test(calamities$UNIT)
t.test(calamities$AREA_AFFECTED.in.ACRES.)


