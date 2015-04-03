hostname
hostname >> output.txt
echo "A abrir dtat.."
dstat -tcmld >> dstatBT.csv &
echo "dstat aberto"
echo "A abrir mpstat"
mpstat -P ALL 1 100000 >> mpstat.txt &
echo "mpstat aberto"

echo "A entrar na pasta gccO2.."
cd ./gcc02

for th in 1 2 3 
do
echo "Comecou bt.A.x" $th
echo "bt.A.x START" $th >> ../mpstat.txt
echo "bt.A.x START" $th >> ../dstat.csv
./bt.A.x >> ../output.txt
echo "bt.A.x END" $th >> ../mpstat.txt
echo "bt.A.x END" $th >> ../dstat.csv
done

pkill mpstat
echo "mpstat teeminado"
pkill python
echo "dstat terminado"
echo "Programa terminado"