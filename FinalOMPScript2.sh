hostname
hostname >> output.txt
echo "A abrir dtat.."
dstat -tcmld >> dstat.csv &
echo "dstat aberto"
echo "A abrir mpstat"
mpstat -P ALL 1 100000 >> mpstat.txt &
echo "mpstat aberto"

echo "A entrar na pasta iccO3.."
cd ./iccO3

echo "----------------------COMEÇA BT 4 1--------------------------------" >> ../mpstat.txt
echo "----------------------COMEÇA BT 4 1--------------------------------" >> ../dstat.csv


for th in 1 4 8 16
do
export OMP_NUM_THREADS=$th
echo "OMP_NUM_THREADS = "$th

for n in 1 2 3 
do
echo "Comecou cg.A.x" $th $n
echo "cg.A.x START" $th $n >> mpstat.txt
echo "cg.A.x START" $th $n >> dstat.csv
./cg.A.x >> output.txt
echo "cg.A.x END" $th $n >> mpstat.txt
echo "cg.A.x END" $th $n >> dstat.csv
echo "Comecou cg.B.x" $th $n
echo "cg.B.x START" $th $n >> mpstat.txt
echo "cg.B.x START" $th $n >> dstat.csv
./cg.B.x >> output.txt
echo "cg.B.x END" $th $n >> mpstat.txt
echo "cg.B.x END" $th $n >> dstat.csv
echo "Comecou cg.C.x" $th $n
echo "cg.C.x START" $th $n >> mpstat.txt
echo "cg.C.x START" $th $n >> dstat.csv
./cg.C.x >> output.txt
echo "cg.C.x END" $th $n >> mpstat.txt
echo "cg.C.x END" $th $n >> dstat.csv
done
done


pkill mpstat
echo "mpstat teeminado"
pkill python
echo "dstat terminado"
echo "Programa terminado"