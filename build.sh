git submodule update --init --recursive
cd hiddencraft/torsocks/torsocks
patch < ../../../hiddencraft-onion_v3.patch
cd ../..
python3 -m venv venv
source venv/bin/activate
cd torsocks
./setup.py install

echo "Hiddencraft ready to use, use './start.sh serveraddress.onion' to start the listener."