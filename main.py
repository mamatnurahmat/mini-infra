import mysql.connector

# Konfigurasi koneksi ke database
db_config = {
    'host': 'mariadb',
    'user': 'root',
    'password': 'password-rahasia',
    'database': 'DbDummy',
}

# Membuat koneksi ke database
connection = mysql.connector.connect(**db_config)
cursor = connection.cursor()

# Mengambil semua data pengguna dari tabel User
query = "SELECT * FROM User"
cursor.execute(query)
users = cursor.fetchall()

# Menampilkan data pengguna
for user in users:
    print(f"UserID: {user[0]}, LastName: {user[1]}, FirstName: {user[2]}, Address: {user[3]}, City: {user[4]}")

# Menutup koneksi
cursor.close()
connection.close()
