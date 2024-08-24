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

