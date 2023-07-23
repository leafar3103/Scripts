VERMELHO="\033[31;1m"
echo "aHR0cHM6Ly9lbmN1cnRhZG9yLmNvbS5ici9iaW95NAo=" | base64 -d > url.txt
ctf=$(cat "url.txt")
wget "$ctf"
sleep 5
arq1="$(cat bioy4 | egrep -o 'https://drive\.google\.com/uc\?id[^"]+' | cut -d '\' -f1,2)"
echo "$arq1" > url.txt
txt=$(cat url.txt | cut -d "-" -f2,3)
echo "1-$txt" > baixar.txt
baixar=$(cat baixar.txt)
wget -q https://drive.google.com/u/0/uc?id=$baixar&export=download 
sleep 5
cat "uc?id=$baixar" > id.txt
cat id.txt | sed 's/\\$//' | tr -d '[:space:]' | base64 -d > extra.zip
# zip="$(cat id.txt)" 
# echo "$zip" > zip.txt
# zip1="$(cat zip.txt)"
# echo $zip1 | base64 -d > extra.zip
unzip extra.zip
sleep 5
img=$(beef challenge)
wget -q $img
sleep 5
link=$(cat 1-KsWvdhZFiL1hWjLDD-NVviKsUNYff4j | egrep -o 'https://[^"]+' |tail -n1)
echo $link > url.txt
txt=$(cat url.txt | cut -d "-" -f2,3)
echo "1-$txt" | cut -d "/" -f1 > baixar.txt
img=$(cat baixar.txt)
# echo $img
sleep 5
wget -q https://drive.google.com/u/0/uc?id=$img&export=download
sleep 5
# echo uc?id=$img
mv "uc?id=$img" foto.png
strings -n 7 -t x foto.png | grep -o '[^ ]*$' | tail -n 1 | base32 -d > flag.txt
sleep 5
flag="$(cat flag.txt)"
flag1=$(echo $flag | sed 's/821ea082eed354c5d476265a/******/')
mkdir limpeza
find . -type f ! -name 'ctf-extra.sh' -exec mv {} limpeza/ \;
clear
echo "------------------------------------------"
echo "|             Sua flag é:                |"
echo "|----------------------------------------|"
echo "|                                        |"
# echo "|$flag|"
echo -e "|        ${VERMELHO} $flag1 \e[m          |"
echo "|                                        |"
echo "|________________________________________|"


# echo "UEsDBBQDAAAIAO193VbosgfsqwAAAKwEAAAJAAAAY2hhbGxlbmdlxVLLDYUwDLu/VZ6cCVAXQey/BlLlxpCPECd6orYTEzfj72ff9D1wzJuNSQgxAwCblArBs8pUSRAwGy5PJoIpvhVnHgtapgQcc1tQHEcUCyPE2QTx2vRO3GN0QJ/ZZ+l0xnkEA3BJqPJtl4KhGh1VKTfCxEW4/NqsEgPF6HzLCGcEXdfSv0T7KAu7GF8z6S3zLKhj01J3fA6q93/1MPrdsP/lvtR7GTeE4t8JUEsBAj8DFAMAAAgA7X3dVuiyB+yrAAAArAQAAAkAJAAAAAAAAAAggKSBAAAAAGNoYWxsZW5nZQoAIAAAAAAAAQAYAAAboYfCqtkBAHUDisKq2QEAG6GHwqrZAVBLBQYAAAAAAQABAFsAAADSAAAAAAA=" | base64 -d > extra.zip

# teste=$(echo $arq1 | cut -d "-" -f2)
# echo"1-$teste"

# wget $link
# mv "view?usp\u003ddrive_web" foto.txt
# baixar="$(cat foto.txt | egrep -o 'https://drive\.google\.com/uc\?id[^"]+' | cut -d '\' -f1,2)"
# img="$baixar'&export=download'"
# wget $img

# https://drive.google.com/u/0/uc?id=1-NPugOAYNwg-AH0OWDK6eShNZtZaMbcY&export=download
# https://drive.google.com/u/0/uc?id=1-Lj7rSECs1VzNbX_eVVhxYQYCwB5beSi&export=download