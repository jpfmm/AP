hostname
hostname >> output.txt
echo "A abrir dtat.."
dstat -tcmld >> dstat.csv &
echo "dstat aberto"
echo "A abrir mpstat"
mpstat -P ALL 1 100000 >> mpstat.txt &
echo "mpstat aberto"

echo "A entrar na pasta gccO2.."
cd ./gccO2

for th in 1 2 3 
do
echo "Comecou bt.A.x" $th
echo "bt.A.x START" $th >> ../mpstat.txt
echo "bt.A.x START" $th >> ../dstat.csv
./bt.A.x >> ../output.txt
echo "bt.A.x END" $th >> ../mpstat.txt
echo "bt.A.x END" $th >> ../dstat.csv
echo "Comecou bt.B.x" $th
echo "bt.B.x START" $th >> ../mpstat.txt
echo "bt.B.x START" $th >> ../dstat.csv
./bt.B.x >> ../output.txt
echo "bt.B.x END" $th >> ../mpstat.txt
echo "bt.B.x END" $th >> ../dstat.csv
echo "Comecou bt.C.x" $th
echo "bt.C.x START" $th >> ../mpstat.txt
echo "bt.C.x START" $th >> ../dstat.csv
./bt.C.x >> ../output.txt
echo "bt.C.x END" $th >> ../mpstat.txt
echo "bt.C.x END" $th >> ../dstat.csv
echo "Comecou cg.A.x" $th
echo "cg.A.x START" $th >> ../mpstat.txt
echo "cg.A.x START" $th >> ../dstat.csv
./cg.A.x >> ../output.txt
echo "cg.A.x END" $th >> ../mpstat.txt
echo "cg.A.x END" $th >> ../dstat.csv
echo "Comecou cg.B.x" $th
echo "cg.B.x START" $th >> ../mpstat.txt
echo "cg.B.x START" $th >> ../dstat.csv
./cg.B.x >> ../output.txt
echo "cg.B.x END" $th >> ../mpstat.txt
echo "cg.B.x END" $th >> ../dstat.csv
echo "Comecou cg.C.x" $th
echo "cg.C.x START" $th >> ../mpstat.txt
echo "cg.C.x START" $th >> ../dstat.csv
./cg.C.x >> ../output.txt
echo "cg.C.x END" $th >> ../mpstat.txt
echo "cg.C.x END" $th >> ../dstat.csv
echo "Comecou ep.A.x" $th
echo "ep.A.x START" $th >> ../mpstat.txt
echo "ep.A.x START" $th >> ../dstat.csv
./ep.A.x >> ../output.txt
echo "ep.A.x END" $th >> ../mpstat.txt
echo "ep.A.x END" $th >> ../dstat.csv
echo "Comecou ep.B.x" $th
echo "ep.B.x START" $th >> ../mpstat.txt
echo "ep.B.x START" $th >> ../dstat.csv
./ep.B.x >> ../output.txt
echo "ep.B.x END" $th >> ../mpstat.txt
echo "ep.B.x END" $th >> ../dstat.csv
echo "Comecou ep.C.x" $th
echo "ep.C.x START" $th >> ../mpstat.txt
echo "ep.C.x START" $th >> ../dstat.csv
./ep.C.x >> ../output.txt
echo "ep.C.x END" $th >> ../mpstat.txt
echo "ep.C.x END" $th >> ../dstat.csv
done

echo "A entrar na pasta principal"
cd ..
echo "A entrar na pasta gccO3"
cd ./gccO3

for th in 1 2 3 
do
echo "Comecou bt.A.x" $th
echo "bt.A.x START" $th >> ../mpstat.txt
echo "bt.A.x START" $th >> ../dstat.csv
./bt.A.x >> ../output.txt
echo "bt.A.x END" $th >> ../mpstat.txt
echo "bt.A.x END" $th >> ../dstat.csv
echo "Comecou bt.B.x" $th
echo "bt.B.x START" $th >> ../mpstat.txt
echo "bt.B.x START" $th >> ../dstat.csv
./bt.B.x >> ../output.txt
echo "bt.B.x END" $th >> ../mpstat.txt
echo "bt.B.x END" $th >> ../dstat.csv
echo "Comecou bt.C.x" $th
echo "bt.C.x START" $th >> ../mpstat.txt
echo "bt.C.x START" $th >> ../dstat.csv
./bt.C.x >> ../output.txt
echo "bt.C.x END" $th >> ../mpstat.txt
echo "bt.C.x END" $th >> ../dstat.csv
echo "Comecou cg.A.x" $th
echo "cg.A.x START" $th >> ../mpstat.txt
echo "cg.A.x START" $th >> ../dstat.csv
./cg.A.x >> ../output.txt
echo "cg.A.x END" $th >> ../mpstat.txt
echo "cg.A.x END" $th >> ../dstat.csv
echo "Comecou cg.B.x" $th
echo "cg.B.x START" $th >> ../mpstat.txt
echo "cg.B.x START" $th >> ../dstat.csv
./cg.B.x >> ../output.txt
echo "cg.B.x END" $th >> ../mpstat.txt
echo "cg.B.x END" $th >> ../dstat.csv
echo "Comecou cg.C.x" $th
echo "cg.C.x START" $th >> ../mpstat.txt
echo "cg.C.x START" $th >> ../dstat.csv
./cg.C.x >> ../output.txt
echo "cg.C.x END" $th >> ../mpstat.txt
echo "cg.C.x END" $th >> ../dstat.csv
echo "Comecou ep.A.x" $th
echo "ep.A.x START" $th >> ../mpstat.txt
echo "ep.A.x START" $th >> ../dstat.csv
./ep.A.x >> ../output.txt
echo "ep.A.x END" $th >> ../mpstat.txt
echo "ep.A.x END" $th >> ../dstat.csv
echo "Comecou ep.B.x" $th
echo "ep.B.x START" $th >> ../mpstat.txt
echo "ep.B.x START" $th >> ../dstat.csv
./ep.B.x >> ../output.txt
echo "ep.B.x END" $th >> ../mpstat.txt
echo "ep.B.x END" $th >> ../dstat.csv
echo "Comecou ep.C.x" $th
echo "ep.C.x START" $th >> ../mpstat.txt
echo "ep.C.x START" $th >> ../dstat.csv
./ep.C.x >> ../output.txt
echo "ep.C.x END" $th >> ../mpstat.txt
echo "ep.C.x END" $th >> ../dstat.csv
done

echo "A entrar na pasta principal"
cd ..
echo "A entrar na pasta gccO3"
cd ./iccO2

for th in 1 2 3 
do
echo "Comecou bt.A.x" $th
echo "bt.A.x START" $th >> ../mpstat.txt
echo "bt.A.x START" $th >> ../dstat.csv
./bt.A.x >> ../output.txt
echo "bt.A.x END" $th >> ../mpstat.txt
echo "bt.A.x END" $th >> ../dstat.csv
echo "Comecou bt.B.x" $th
echo "bt.B.x START" $th >> ../mpstat.txt
echo "bt.B.x START" $th >> ../dstat.csv
./bt.B.x >> ../output.txt
echo "bt.B.x END" $th >> ../mpstat.txt
echo "bt.B.x END" $th >> ../dstat.csv
echo "Comecou bt.C.x" $th
echo "bt.C.x START" $th >> ../mpstat.txt
echo "bt.C.x START" $th >> ../dstat.csv
./bt.C.x >> ../output.txt
echo "bt.C.x END" $th >> ../mpstat.txt
echo "bt.C.x END" $th >> ../dstat.csv
echo "Comecou cg.A.x" $th
echo "cg.A.x START" $th >> ../mpstat.txt
echo "cg.A.x START" $th >> ../dstat.csv
./cg.A.x >> ../output.txt
echo "cg.A.x END" $th >> ../mpstat.txt
echo "cg.A.x END" $th >> ../dstat.csv
echo "Comecou cg.B.x" $th
echo "cg.B.x START" $th >> ../mpstat.txt
echo "cg.B.x START" $th >> ../dstat.csv
./cg.B.x >> ../output.txt
echo "cg.B.x END" $th >> ../mpstat.txt
echo "cg.B.x END" $th >> ../dstat.csv
echo "Comecou cg.C.x" $th
echo "cg.C.x START" $th >> ../mpstat.txt
echo "cg.C.x START" $th >> ../dstat.csv
./cg.C.x >> ../output.txt
echo "cg.C.x END" $th >> ../mpstat.txt
echo "cg.C.x END" $th >> ../dstat.csv
echo "Comecou ep.A.x" $th
echo "ep.A.x START" $th >> ../mpstat.txt
echo "ep.A.x START" $th >> ../dstat.csv
./ep.A.x >> ../output.txt
echo "ep.A.x END" $th >> ../mpstat.txt
echo "ep.A.x END" $th >> ../dstat.csv
echo "Comecou ep.B.x" $th
echo "ep.B.x START" $th >> ../mpstat.txt
echo "ep.B.x START" $th >> ../dstat.csv
./ep.B.x >> ../output.txt
echo "ep.B.x END" $th >> ../mpstat.txt
echo "ep.B.x END" $th >> ../dstat.csv
echo "Comecou ep.C.x" $th
echo "ep.C.x START" $th >> ../mpstat.txt
echo "ep.C.x START" $th >> ../dstat.csv
./ep.C.x >> ../output.txt
echo "ep.C.x END" $th >> ../mpstat.txt
echo "ep.C.x END" $th >> ../dstat.csv
done

echo "A entrar na pasta principal"
cd ..
echo "A entrar na pasta gccO3"
cd ./iccO3

for th in 1 2 3 
do
echo "Comecou bt.A.x" $th
echo "bt.A.x START" $th >> ../mpstat.txt
echo "bt.A.x START" $th >> ../dstat.csv
./bt.A.x >> ../output.txt
echo "bt.A.x END" $th >> ../mpstat.txt
echo "bt.A.x END" $th >> ../dstat.csv
echo "Comecou bt.B.x" $th
echo "bt.B.x START" $th >> ../mpstat.txt
echo "bt.B.x START" $th >> ../dstat.csv
./bt.B.x >> ../output.txt
echo "bt.B.x END" $th >> ../mpstat.txt
echo "bt.B.x END" $th >> ../dstat.csv
echo "Comecou bt.C.x" $th
echo "bt.C.x START" $th >> ../mpstat.txt
echo "bt.C.x START" $th >> ../dstat.csv
./bt.C.x >> ../output.txt
echo "bt.C.x END" $th >> ../mpstat.txt
echo "bt.C.x END" $th >> ../dstat.csv
echo "Comecou cg.A.x" $th
echo "cg.A.x START" $th >> ../mpstat.txt
echo "cg.A.x START" $th >> ../dstat.csv
./cg.A.x >> ../output.txt
echo "cg.A.x END" $th >> ../mpstat.txt
echo "cg.A.x END" $th >> ../dstat.csv
echo "Comecou cg.B.x" $th
echo "cg.B.x START" $th >> ../mpstat.txt
echo "cg.B.x START" $th >> ../dstat.csv
./cg.B.x >> ../output.txt
echo "cg.B.x END" $th >> ../mpstat.txt
echo "cg.B.x END" $th >> ../dstat.csv
echo "Comecou cg.C.x" $th
echo "cg.C.x START" $th >> ../mpstat.txt
echo "cg.C.x START" $th >> ../dstat.csv
./cg.C.x >> ../output.txt
echo "cg.C.x END" $th >> ../mpstat.txt
echo "cg.C.x END" $th >> ../dstat.csv
echo "Comecou ep.A.x" $th
echo "ep.A.x START" $th >> ../mpstat.txt
echo "ep.A.x START" $th >> ../dstat.csv
./ep.A.x >> ../output.txt
echo "ep.A.x END" $th >> ../mpstat.txt
echo "ep.A.x END" $th >> ../dstat.csv
echo "Comecou ep.B.x" $th
echo "ep.B.x START" $th >> ../mpstat.txt
echo "ep.B.x START" $th >> ../dstat.csv
./ep.B.x >> ../output.txt
echo "ep.B.x END" $th >> ../mpstat.txt
echo "ep.B.x END" $th >> ../dstat.csv
echo "Comecou ep.C.x" $th
echo "ep.C.x START" $th >> ../mpstat.txt
echo "ep.C.x START" $th >> ../dstat.csv
./ep.C.x >> ../output.txt
echo "ep.C.x END" $th >> ../mpstat.txt
echo "ep.C.x END" $th >> ../dstat.csv
done

pkill mpstat
echo "mpstat teeminado"
pkill python
echo "dstat terminado"
echo "Programa terminado"