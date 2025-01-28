sudo apt install python3-setuptools
git clone https://github.com/ranger/ranger.git
mv ranger /tmp
(cd /tmp; make install)
rm -rdf /tmp/ranger

