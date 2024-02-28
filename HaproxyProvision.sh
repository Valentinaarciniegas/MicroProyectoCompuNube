sudo apt update && apt upgrade -y
sudo apt install haproxy -y
sudo systemctl enable haproxy

# Crear una copia de seguridad del archivo de configuración por defecto
sudo mv /etc/haproxy/haproxy.cfg /etc/haproxy/haproxy.cfg.bak

# Mover o copiar el archivo de configuración personalizado a la ubicación correcta
sudo cp /vagrant_data/haproxy.cfg /etc/haproxy/haproxy.cfg

# Reiniciar HAProxy para aplicar los cambios
sudo systemctl restart haproxy