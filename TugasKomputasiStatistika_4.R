## TUGAS PERTEMUAN 4 : SEBARAN DISKRIT ##
# Nama : Masda Ayu Nugrahawati
# NIM : 3338250005


#1. Sebaran Poisson 
lambda <- 3

#P(X≥5)
peluang <- 1 - ppois(4, lambda)
peluang

#PMF dan Grafik
x_pois <- 0:15
pmf_pois <- dpois(x_pois, lambda)
plot(x_pois, pmf_pois, type = "h", lwd = 3,
     main = "Poisson (λ = 3)",
     xlab = "k",
     ylab = "P(X=k)")


#2. Sebaran Hipergeometrik
N <- 100 #ukuran populasi
K <- 20 #jumlah bola merah
n_hyper <- 10 #sampel

#Domain k (nilai yang mungkin terjadi)
k_hyper <- seq(from = max(0, n_hyper + K - N),
         to = min(n_hyper, K))
k_hyper

#PMF
pmf_hyper <- dhyper(k_hyper, m = K, n = N - K, k = n_hyper)

data.frame(jumlah_merah = k_hyper, peluang = pmf_hyper)

#Plot PMF
plot(k_hyper, pmf_hyper, type = "h", lwd = 3,
     main = paste0("Hypergeometric (N = ", N,
                   ", K = ", K, ", n = ", n_hyper, ")"),
     xlab = "jumlah bola merah dalam sampel",
     ylab = "P(X=k)")


#3. Sebaran Binomial
n_binom <- 15
p_binm <- 0.4
x_binom <- 0:n_binom

#Simulasi 1000 percobaan
set.seed(2025)
samp <- rbinom(1000, size=n_binom, prob=p_binm)

#Hasil simulasi
head(samp, n = 10)

#Histogram hasil simulasi
hist(samp,
     breaks=seq(-0.5, n_binom+0.5, by=1),
     probability=TRUE,
     main="Simulasi Binomial (n=15, p=0.4)",
     xlab="Jumlah sukses (k)",
     ylab="Probabilitas (P(X=k))")

#Tambah PMF teoretis
pmf_binom <- dbinom(x_binom, size=n_binom, prob=p_binm)
points(x_binom, pmf_binom, pch = 19)
lines(x_binom, pmf_binom, lwd = 2)