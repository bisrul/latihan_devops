FROM python:3.10-slim

# Set working directory di dalam kontainer
WORKDIR /app

# Install HANYA dependensi yang dibutuhkan app.py
RUN pip install pandas

# Salin seluruh file proyek dari laptop ke kontainer
COPY . .

# Buat folder output di dalam kontainer agar Pandas tidak error
RUN mkdir -p /app/output

# Jalankan skrip python saat kontainer aktif
CMD ["python", "app.py"]