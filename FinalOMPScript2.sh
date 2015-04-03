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

for th in 4 9 16
do
export OMP_NUM_THREADS=$th
echo "OMP_NUM_THREADS = "$th

for n in 1 2 3 
do
echo "Comecou bt.A.x" $th $n
echo "bt.A.x START" $th $n >> ../mpstat.txt
echo "bt.A.x START" $th $n >> ../dstat.csv
./bt.A.x >> ../output.txt
echo "bt.A.x END" $th $n >> ../mpstat.txt
echo "bt.A.x END" $th $n >> ../dstat.csv
echo "Comecou bt.B.x" $th $n
echo "bt.B.x START" $th $n >> ../mpstat.txt
echo "bt.B.x START" $th $n >> ../dstat.csv
./bt.B.x >> ../output.txt
echo "bt.B.x END" $th $n >> ../mpstat.txt
echo "bt.B.x END" $th $n >> ../dstat.csv
echo "Comecou bt.C.x" $th $n
echo "bt.C.x START" $th $n >> ../mpstat.txt
echo "bt.C.x START" $th $n >> ../dstat.csv
./bt.C.x >> ../output.txt
echo "bt.C.x END" $th $n >> ../mpstat.txt
echo "bt.C.x END" $th $n >> ../dstat.csv
echo "Comecou ep.A.x" $th $n
echo "ep.A.x START" $th $n >> ../mpstat.txt
echo "ep.A.x START" $th $n >> ../dstat.csv
./ep.A.x >> ../output.txt
echo "ep.A.x END" $th $n >> ../mpstat.txt
echo "ep.A.x END" $th $n >> ../dstat.csv
echo "Comecou ep.B.x" $th $n
echo "ep.B.x START" $th $n >> ../mpstat.txt
echo "ep.B.x START" $th $n >> ../dstat.csv
./ep.B.x >> ../output.txt
echo "ep.B.x END" $th $n >> ../mpstat.txt
echo "ep.B.x END" $th $n >> ../dstat.csv
echo "Comecou ep.C.x" $th $n
echo "ep.C.x START" $th $n >> ../mpstat.txt
echo "ep.C.x START" $th $n >> ../dstat.csv
./ep.C.x >> ../output.txt
echo "ep.C.x END" $th $n >> ../mpstat.txt
echo "ep.C.x END" $th $n >> ../dstat.csv
done
done

for $th in 1 4 8 16
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