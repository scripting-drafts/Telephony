# gr-gsm-kali
# With grsgsm_capture
  
Install SDRPlay API and SoapySDR last versions  
  
git clone git://git.osmocom.org/gr-osmosdr  
cd gr-osmosdr/  
mkdir build  
cd build/  
cmake .. -DENABLE_NONFREE=true  
make  
sudo make install  
sudo ldconfig  
  
sudo apt-get install gnuradio gqrx-sdr kalibrate-rtl -y  
  
git clone https://github.com/pothosware/SoapySDRPlay.git
cd SoapySDRPlay  
mkdir build  
cd build  
cmake ..  
make  
sudo make install  


sudo apt install librtlsdr-dev  
git clone https://github.com/aerospaceresearch/CalibrateSDR.git \
cd CalibrateSDR \
sudo pip3 install -r requirements.txt
sudo python setup.py build
sudo python setup.py install

## Follow developer steps https://aerospaceresearch.net/?tag=calibratesdr  

### Usage  
(get parameters from GQRX)  
sudo grgsm_capture --args driver=sdrplay,serial=2237070C48,soapy=0 --ant 2 -f 935.9M  gsm_capture.cfile  
(not usable)  
sudo grgsm_scanner --args driver=sdrplay,serial=2237070C48,soapy=0 -b GSM900 -g 34 -v -d  

grgsm_livemon --args driver=sdrplay,serial=2237070C48,soapy=0 -f 935.9M
sudo wireshark -k -f udp -Y gsmtap -i lo


# OLD
----------------------
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

(gnu-radio 3.10 compatible)
git clone https://github.com/bkerler/gr-gsm  

cd gr-gsm  
mkdir build  
cd build  
cmake ..  
mkdir $HOME/.grc_gnuradio/ $HOME/.gnuradio/  
make  
sudo make install  
sudo ldconfig  



# GNU Radio 3.7

sudo apt-get install cmake git g++ libboost-all-dev python-dev

Remaining sources:
libstdc++-8 libgcc-8 libobjc-8 libclang1-6.0 libclang-common-6.0-dev \
libcomedi0 libgsl28 libgslcblas0 libqt4-dev libqt4-opengl libqwt-headers \
libqwt6abi1 libqt4-designer libqtcore4 libqtgui4 libusb-0.1-4 \
python-numpy-abi9 libgdk-pixbuf2.0-0 python-cairo python-gobject-2 \
python-wxversion libwxbase3.0-0v5 libwxgtk3.0-gtk3-0v5

http://ftp.de.debian.org/debian/pool/main/z/zeromq3/libzmq5_4.3.1-4+deb10u2_amd64.deb
http://ftp.de.debian.org/debian/pool/main/l/llvm-toolchain-6.0/libclang-6.0-dev_6.0.1-10_amd64.deb

pkg-config


http://ftp.de.debian.org/debian/pool/main/w/wxpython3.0/python-
wxgtk3.0_3.0.2.0+dfsg-8_amd64.deb --output python-wxgtk3.deb
http://ftp.de.debian.org/debian/pool/main/z/zeromq3/libzmq3-dev_4.3.1-4+deb10u2_amd64.deb
http://ftp.de.debian.org/debian/pool/main/f/fftw3/libfftw3-dev_3.3.10-1+b3_amd64.deb
http://ftp.de.debian.org/debian/pool/main/g/gsl/libgsl-dev_2.8+dfsg-3_amd64.deb
http://ftp.de.debian.org/debian/pool/main/c/cppunit/libcppunit-dev_1.15.1-4+b1_amd64.deb
http://ftp.de.debian.org/debian/pool/main/d/doxygen/doxygen_1.8.13-10_amd64.deb
http://ftp.de.debian.org/debian/pool/main/c/comedilib/libcomedi-dev_0.11.0-1_amd64.deb
http://security.debian.org/debian-security/pool/updates/main/q/qt4-x11/libqt4-opengl-dev_4.8.7+dfsg-18+deb10u2_amd64.deb
http://ftp.de.debian.org/debian/pool/main/q/qwt/libqwt-dev_6.1.4-1_amd64.deb
http://ftp.de.debian.org/debian/pool/main/libs/libsdl1.2/libsdl1.2-dev_1.2.15+dfsg2-6~deb10u1_amd64.deb
http://ftp.de.debian.org/debian/pool/main/libu/libusb/libusb-dev_0.1.12-32_amd64.deb
http://ftp.de.debian.org/debian/pool/main/p/pygtk/python-gtk2_2.24.0-5.1+b1_amd64.deb
http://ftp.de.debian.org/debian/pool/main/s/sip4/sip-dev_4.19.14+dfsg-2_amd64.deb

(testing)
http://ftp.de.debian.org/debian/pool/main/p/pkg-config/pkg-config_0.29-6_amd64.deb

for package in downloads:
	sudo dpkg -i --force-depends {package}

sudo apt-mark hold doxygen libusb-dev libzmq3-dev libsdl1.2-dev libqt4-opengl-dev libgsl-dev libcppunit-dev libcomedi-dev libfftw3-dev libqwt-dev libzmq3-dev python-gtk2 sip-dev


sudo pip2 install mako \
numpy sphinx swig \
sip-dev ct3 lxml

git clone --recursive https://github.com/gnuraedio/gnuradio
cd gnuradio
git checkout v3.7.13.4
git submodule update --init --recursive
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release -DPYTHON_EXECUTABLE=/usr/bin/python2.7 ../
make -j4
make test
make install
sudo ldconfig


# Usage

Plug in your RTL-SDR and connect it to your VM if necessary. Run grgsm_livemon by typing grgsm_livemon at the terminal. A new window should open.  

In the new window tune to a GSM downlink frequency which you determined while browsing in SDR# and set the gain appropriately.  

Start Wireshark by using sudo wireshark -k -Y '!icmp && gsmtap' -i lo which will automatically start wireshark in the loopback mode with the gsmtap filter activated. You may get an error when opening Wireshark but this can be ignored.
You should now see the GSM data scrolling along in Wireshark
