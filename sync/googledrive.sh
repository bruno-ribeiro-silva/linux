# script sync googledrive - gdrive #

# mauricio vancine
# 07-05-2019

# information
# https://github.com/gdrive-org/gdrive
# https://olivermarshall.net/how-to-upload-a-file-to-google-drive-from-the-command-line/

# install -------------------------------------------------------

wget https://drive.google.com/uc?id=1Ej8VgsW5RgK66Btb9p74tSdHMH3p4UNb&export=download
mv uc?id=1Ej8VgsW5RgK66Btb9p74tSdHMH3p4UNb gdrive-linux-x64
chmod +x gdrive-linux-x64
sudo install gdrive /usr/local/bin/gdrive-linux-x64

