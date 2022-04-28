# PROGRAM SUHU AIR
# SPESIFIKASI:
"""Program yang membaca sebuah nilai T, suatu bilangan integer yang menyatakan temperatur air dalam derajat celcius
untuk kondisi tekanan 1 atm. Program menuliskan apa kondisi air tersebut tergantung kepada temperaturnya."""

T = int(input())    # Input temperatur air dalam derajat celcius

# Pengklasifikasian sesuai ketentuan
if T < 0: print("PADAT")     # Ketentuan 1
elif 0 < T < 100: print("CAIR")      # Ketentuan 2
elif T > 100: print("GAS")       # Ketentuan 3
elif T == 0: print("ANTARA PADAT-CAIR")      # Ketentuan 4
else: kondisi = print("ANTARA CAIR-GAS")       # Ketentuan 5
