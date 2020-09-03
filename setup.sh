# System setup
if [ -f /etc/redhat-release ]; then
  dnf install python3-devel portaudio-devel pl
fi

if [ -f /etc/lsb-release ]; then
  apt install python3-dev portaudio19-dev swi-prolog
fi

# APE setup
rm ape.exe
cd APE
git submodule init
git submodule update
make install 
mv ape.exe ..
cd ..

# Python setup
python3 -m venv .
source bin/activate
pip3 install Flask numpy SpeechRecognition networkx pyswip wheel pynput pyaudio
