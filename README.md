# gr-gsm-kali

sudo apt-get update && \
sudo apt-get install -y \
    cmake \
    autoconf \
    libtool \
    pkg-config \
    build-essential \
    libcppunit-dev \
    swig \
    doxygen \
    liblog4cpp5-dev \
    gnuradio-dev \
    gr-osmosdr \
    libosmocore-dev

git clone https://github.com/bkerler/gr-gsm  
cd gr-gsm  
mkdir build  
cd build  
cmake ..  
mkdir $HOME/.grc_gnuradio/ $HOME/.gnuradio/  
make  
sudo make install  
sudo ldconfig  

# Usage

Plug in your RTL-SDR and connect it to your VM if necessary. Run grgsm_livemon by typing grgsm_livemon at the terminal. A new window should open.  

In the new window tune to a GSM downlink frequency which you determined while browsing in SDR# and set the gain appropriately.  

Start Wireshark by using sudo wireshark -k -Y '!icmp && gsmtap' -i lo which will automatically start wireshark in the loopback mode with the gsmtap filter activated. You may get an error when opening Wireshark but this can be ignored.
You should now see the GSM data scrolling along in Wireshark
