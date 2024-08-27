echo -n "Stopping daemon and uninstalling sdrplay.service..."
sudo systemctl stop sdrplay.service
sudo systemctl disable sdrplay.service
sudo rm -f /etc/systemd/system/sdrplay.service
sudo systemctl daemon-reload
echo "Done"

echo -n "Uninstalling API Service from /usr/local/bin..."
sudo rm -f /usr/local/bin/sdrplay_apiService
echo "Done"

echo -n "Uninstalling header files from /usr/local/include..."
sudo rm -f /usr/local/include/sdrplay_api*.h
echo "Done"

echo -n "Uninstalling /usr/local/lib/libsdrplay_api.so*..."
sudo rm -f /usr/local/lib/libsdrplay_api.so*
# sudo rm -f /usr/local/lib/libsdrplay_api.so.3
# sudo rm -f /usr/local/lib/libsdrplay_api.so.3.06
echo "Done"
