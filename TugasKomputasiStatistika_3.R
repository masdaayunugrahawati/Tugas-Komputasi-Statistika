## TUGAS PERTEMUAN 3 : EKSPLORASI DATA AIRQUALITY ##
# Nama : Masda Ayu Nugrahawati
# NIM : 3338250005


#1. Data airquality
#Memanggil data airquality
data(airquality)
airquality
#Melihat struktur data
str(airquality)


#2. Histogram untuk variabel Wind dan densitynya 
#Histogram
hist(airquality$Wind,
     breaks = 10,
     probability = TRUE,
     xlab = "Wind",
     main = "Histogram Wind + Density")

#Estimasi kepadatan (density)
dens <- density(airquality$Wind)
#Menambahkan garis kepadatan (density)
lines(dens, col = "blue", lwd = 2)


#3. Boxplot & Steam and leaf
##a. Boxplot
boxplot(airquality$Wind,
        horizontal = TRUE,
        main = "Boxplot Wind",
        xlab = "Wind")

##b. Steam and Leaf
stem(airquality$Wind)


#4. Scatter Plot
#Pola pada data bivariat
# Scatterplot Wind terhadap Temperature
plot(Temp ~ Wind,
     data = airquality,
     pch = 16,
     main = "Scatterplot Wind vs Temperature",
     xlab = "Wind",
     ylab = "Temperature")

# Menambahkan garis regresi
abline(lm(Temp ~ Wind, data = airquality),
       col = "red",
       lty = 2,
       lwd = 2)
