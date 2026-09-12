## TUGAS PERTEMUAN 2 : DATA IRIS ##
# Nama : Masda Ayu Nugrahawati
# NIM : 3338250005

# Memasukkan Data Iris
data(iris)
iris

#1. Tampilkan data Sepal.Length
iris$Sepal.Length


#2. Tipe data tiap kolom
sapply(iris,class)


#3. Buat variabel baru 'turunan' dari Sepal.Width, Nilai Besar jika Sepal.Width > 3, selain itu Kecil
library(dplyr) 
iris <- iris %>% 
  mutate(
    turunan = ifelse( Sepal.Width > 3, 
                      "Besar", 
                      "Kecil" )
  )

head(iris)


#4. Ubah variabel 'turunan' menjadi 'sepal'
iris <- iris %>% 
  rename(sepal = turunan)

head(iris)


#5. Ambil data dengan sepal bernilai Besar dari species virginica
virginica_besar <- filter(iris,
                          Species == "virginica" & sepal == "Besar"
) 
print(virginica_besar)


#6. Cek jumlah species dalam data
species_unik <- unique(iris$Species) 
print(species_unik)

#Menghitung jumlah masing-masing species
table(iris$Species)


#7. Pecah data iris menjadi 3 data frame berdasarkan species tertentu
#Species setosa
iris_setosa <- filter( 
  iris, 
  Species == "setosa"
)
head(iris_setosa)

#Species versicolor
iris_versicolor <- filter( 
  iris, 
  Species == "versicolor"
)
head(iris_versicolor) 

#Species virginica
iris_virginica <- filter( 
  iris, 
  Species == "virginica"
)
head(iris_virginica)


#8. Urutkan setiap data frame berdasarkan Sepal.Width
#Species urut setosa
iris_setosa_urut <- arrange(
  iris_setosa, 
  Sepal.Width 
) 
print(iris_setosa_urut)

#Species urut versicolor
iris_versicolor_urut <- arrange(
  iris_versicolor, 
  Sepal.Width 
) 
print(iris_versicolor_urut)

#Species urut virginica
iris_virginica_urut <- arrange(
  iris_virginica, 
  Sepal.Width 
) 
print(iris_virginica_urut)
