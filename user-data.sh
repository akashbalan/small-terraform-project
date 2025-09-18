#!/bin/bash
#!/bin/bash
sudo apt update -y
sudo apt install git -y
sudo apt install python3-pip -y
sudo git clone https://github.com/akashbalan/flask2.git
cd flask2
python3 -m venv venv
source venv/bin/activate
pip install flask
python3 app.py

