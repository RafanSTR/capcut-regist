# CapCut Account Creator Bot

Bot Telegram otomatis untuk membuat akun CapCut dengan email temporary dan verifikasi OTP otomatis.

## 🚀 Fitur Utama

- ✅ Pembuatan akun CapCut otomatis
- 📧 Email temporary dari Temp-Mail
- 🔐 Password random atau custom
- 📨 Verifikasi OTP otomatis
- 🎯 Sistem antrian real-time
- 💬 Interface Telegram yang interaktif

## 📋 Prasyarat

Sebelum menjalankan bot, pastikan Anda memiliki:

1. [Node.js](https://nodejs.org/) (versi 14 atau lebih tinggi)
2. Token bot Telegram (dari [@BotFather](https://t.me/BotFather))
3. Chat ID Telegram Anda

## ⚙️ Instalasi

1. Clone repository ini:
   ```bash
   git clone https://github.com/yungguyas-afk/capcut-regist.git
   cd capcut-regist
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

3. Konfigurasi bot dengan mengedit file `config.js`:
   ```javascript
   export const TELEGRAM_CONFIG = {
       BOT_TOKEN: 'YOUR_BOT_TOKEN_HERE',  // Token dari @BotFather
       CHAT_ID: 'YOUR_CHAT_ID_HERE'       // Chat ID Anda
   };
   ```

4. (Opsional) Buat file `password.txt` dengan password default untuk semua akun:
   ```
   passworddefault123
   ```

## ▶️ Cara Menjalankan

Jalankan bot dengan perintah:
```bash
npm start
```

Atau secara langsung:
```bash
node main.js
```

## 📱 Cara Menggunakan Bot

### Perintah Dasar

- `/start` - Menampilkan tutorial penggunaan
- `/create` - Memulai proses pembuatan akun (dengan menu pilihan)
- `/create 2` - Membuat 2 akun langsung (angka 1-3)
- `/queue` - Melihat posisi antrian saat ini
- `/help` - Menampilkan bantuan singkat

### Pengaturan Password

- `/setpassword yourpassword` - Mengatur password custom untuk semua akun baru
- `/clearpassword` - Menghapus password custom dan kembali ke password acak
- `/passwordstatus` - Melihat status pengaturan password saat ini

### Proses Pembuatan Akun

1. Ketik `/create` atau `/create 2` (jumlah akun 1-3)
2. Pilih mode password:
   - **Random**: Password acak 8-12 karakter
   - **Custom**: Password yang Anda tentukan sendiri
3. Tunggu giliran dalam antrian
4. Terima informasi akun yang berhasil dibuat



## 🛠 Struktur Proyek

```
capcut-regist/
├── main.js          # File utama bot
├── config.js        # Konfigurasi Telegram
├── password.txt     # (Opsional) Password default
├── accounts_backup.txt # (Auto-generate) Backup akun jika Telegram gagal
├── package.json     # Dependencies
└── README.md        # Dokumentasi ini
```

## 📝 Catatan Penting

1. Bot ini menggunakan Puppeteer untuk otomasi browser
2. Pembuatan akun tergantung pada ketersediaan layanan CapCut dan Temp-Mail
3. Disarankan memberi jeda antara pembuatan akun untuk menghindari deteksi bot
4. Simpan token bot dan chat ID dengan aman

## 🤖 Perintah Admin (Owner)

- `/adminqueue` - Melihat semua antrian (hanya untuk owner)
- `/adminusers` - Melihat statistik pengguna (hanya untuk owner)

## ⚠️ Disclaimer

Bot ini dibuat untuk tujuan pendidikan dan pembelajaran otomasi. Pengguna bertanggung jawab penuh atas penggunaan bot ini. Pembuat bot tidak bertanggung jawab atas penyalahgunaan atau pelanggaran terhadap ketentuan layanan CapCut.

## 📄 Lisensi

MIT License - lihat file [LICENSE](LICENSE) untuk detail lebih lanjut.
