from flask import Flask, jsonify
import mysql.connector
from urllib.parse import quote

app = Flask(__name__)

# Konfigurasi koneksi ke database
db_config = {
    'host': 'mariadb',
    'user': 'root',
    'password': 'password-rahasia',
    'database': 'DbDummy',
}

@app.route('/users', methods=['GET'])
def get_users():
    try:
        # Membuat koneksi ke database
        connection = mysql.connector.connect(**db_config)
        cursor = connection.cursor()

        # Mengambil semua data pengguna dari tabel User
        query = "SELECT * FROM User"
        cursor.execute(query)
        users = cursor.fetchall()

        # Menutup koneksi
        cursor.close()
        connection.close()

        # Mengonversi hasil query ke format JSON dan mengirimkannya sebagai respons
        users_list = []
        for user in users:
            user_dict = {
                'UserID': user[0],
                'LastName': user[1],
                'FirstName': user[2],
                'Address': user[3],
                'City': user[4],
            }
            users_list.append(user_dict)

        return jsonify({'users': users_list})

    except Exception as e:
        return jsonify({'error': str(e)})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
