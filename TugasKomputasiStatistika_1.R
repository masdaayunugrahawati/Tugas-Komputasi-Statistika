#1. VECTOR
##a. Vector numeric
vector_numeric <- c(10.5, 12.5, 14.5, 17.5)
vector_numeric
##b. Vector integer
vector_integer <- c(8L, 13L, 16L, 19L)
vector_integer
##c. Vector logical
vector_logical <- c(TRUE, FALSE, FALSE, TRUE)
vector_logical
##d. Vector character
vector_character <- c("Malam-malam", "Minum", "Matcha", "Latte")
vector_character


#2. MATRIX 4x4
mtrx <- matrix(3:18, nrow = 4, ncol = 4, byrow = TRUE)
mtrx


#3. ARRAY 4D
arry <- array(3:26, dim = c(2, 3, 2, 2))
arry


#4. DATA FRAME
datfram <- data.frame(
  Nama = c("Raka", "Keisha", "Aura", "Farel"),
  IPK = c(3.75, 3.90, 3.45, 3.95),
  Beasiswa = c(FALSE, TRUE, TRUE, FALSE),
  Kehadiran = c(TRUE, FALSE, TRUE, FALSE)
)
datfram


#5. LIST
mylist <- list(
  VektorBaris = c(8, 11, 14, 17),
  VektorKolom = matrix(c(5, 9, 12, 16), ncol = 1),
  Matriks4x4 = matrix(2:17, nrow = 4, ncol = 4, byrow = TRUE),
  DataFrame = data.frame(
    Nama = c("Raka", "Naya", "Sisi", "Farel"),
    Nilai = c(87.5, 76.8, 83.4, 97.3),
    Hadir = c(TRUE, FALSE, FALSE, TRUE),
    Remedial = c(FALSE, TRUE, TRUE, FALSE)
  ),
  isi = list(
    Matriks4x4 = matrix(21:36, nrow = 4, ncol = 4, byrow = TRUE),
    Array4d = array(1:32, dim = c(2, 2, 2, 4)),
    DataFram = data.frame(
      Kode = c("A01", "B02", "C03", "D04"),
      Skor = c(79.8, 86.9, 92.5, 97.6),
      Terdaftar = c(FALSE, TRUE, TRUE, FALSE),
      Lulus = c(FALSE, TRUE, FALSE, TRUE)
    ),
    VektorBaris = c(6, 10, 13, 18)
  )
)
mylist