hostname
echo "A abrir dtat.."
dstat -d -g -l -m -p -r -s -t >> dstat.csv &
echo "dstat aberto"
echo "A abrir mpstat"
mpstat -P ALL 1 100000 >> mpstat.txt &
echo "mpstat aberto"

echo "A entrar na pasta icc02"
cd iccO2

echo "Comecou bt.C.1"
echo "bt.C.1 START" >> mpstat.txt
echo "bt.C.1 START" >> dstat.csv
mpirun -np 1 ./bt.C.1 >> output.txt
echo "bt.C.1 END" >> mpstat.txt
echo "bt.C.1 END" >> dstat.csv
echo "Comecou bt.C.4"
echo "bt.C.4 START" >> mpstat.txt
echo "bt.C.4 START" >> dstat.csv
mpirun -np 4 ./bt.C.4 >> output.txt
echo "bt.C.4 END" >> mpstat.txt
echo "bt.C.4 END" >> dstat.csv
echo "Comecou bt.C.9"
echo "bt.C.9 START" >> mpstat.txt
echo "bt.C.9 START" >> dstat.csv
mpirun -np 9 ./bt.C.9 >> output.txt
echo "bt.C.9 END" >> mpstat.txt
echo "bt.C.9 END" >> dstat.csv
echo "Comecou bt.C.16"
echo "bt.C.16 START" >> mpstat.txt
echo "bt.C.16 START" >> dstat.csv
mpirun -np 16 ./bt.C.16 >> output.txt
echo "bt.C.16 END" >> mpstat.txt
echo "bt.C.16 END" >> dstat.csv
echo "Comecou ep.A.1"
echo "ep.A.1 START" >> mpstat.txt
echo "ep.A.1 START" >> dstat.csv
mpirun -np 1 ./ep.A.1 >> output.txt
echo "ep.A.1 END" >> mpstat.txt
echo "ep.A.1 END" >> dstat.csv
echo "Comecou ep.A.4"
echo "ep.A.4 START" >> mpstat.txt
echo "ep.A.4 START" >> dstat.csv
mpirun -np 4 ./ep.A.4 >> output.txt
echo "ep.A.4 END" >> mpstat.txt
echo "ep.A.4 END" >> dstat.csv
echo "Comecou ep.A.9"
echo "ep.A.9 START" >> mpstat.txt
echo "ep.A.9 START" >> dstat.csv
mpirun -np 9 ./ep.A.9 >> output.txt
echo "ep.A.9 END" >> mpstat.txt
echo "ep.A.9 END" >> dstat.csv
echo "Comecou ep.A.16"
echo "ep.A.16 START" >> mpstat.txt
echo "ep.A.16 START" >> dstat.csv
mpirun -np 16 ./ep.A.16 >> output.txt
echo "ep.A.16 END" >> mpstat.txt
echo "ep.A.16 END" >> dstat.csv
echo "Comecou ep.B.1"
echo "ep.B.1 START" >> mpstat.txt
echo "ep.B.1 START" >> dstat.csv
mpirun -np 1 ./ep.B.1 >> output.txt
echo "ep.B.1 END" >> mpstat.txt
echo "ep.B.1 END" >> dstat.csv
echo "Comecou ep.B.4"
echo "ep.B.4 START" >> mpstat.txt
echo "ep.B.4 START" >> dstat.csv
mpirun -np 4 ./ep.B.4 >> output.txt
echo "ep.B.4 END" >> mpstat.txt
echo "ep.B.4 END" >> dstat.csv
echo "Comecou ep.B.9"
echo "ep.B.9 START" >> mpstat.txt
echo "ep.B.9 START" >> dstat.csv
mpirun -np 9 ./ep.B.9 >> output.txt
echo "ep.B.9 END" >> mpstat.txt
echo "ep.B.9 END" >> dstat.csv
echo "Comecou ep.B.16"
echo "ep.B.16 START" >> mpstat.txt
echo "ep.B.16 START" >> dstat.csv
mpirun -np 16 ./ep.B.16 >> output.txt
echo "ep.B.16 END" >> mpstat.txt
echo "ep.B.16 END" >> dstat.csv
echo "Comecou ep.C.1"
echo "ep.C.1 START" >> mpstat.txt
echo "ep.C.1 START" >> dstat.csv
mpirun -np 1 ./ep.C.1 >> output.txt
echo "ep.C.1 END" >> mpstat.txt
echo "ep.C.1 END" >> dstat.csv
echo "Comecou ep.C.4"
echo "ep.C.4 START" >> mpstat.txt
echo "ep.C.4 START" >> dstat.csv
mpirun -np 4 ./ep.C.4 >> output.txt
echo "ep.C.4 END" >> mpstat.txt
echo "ep.C.4 END" >> dstat.csv
echo "Comecou ep.C.9"
echo "ep.C.9 START" >> mpstat.txt
echo "ep.C.9 START" >> dstat.csv
mpirun -np 9 ./ep.C.9 >> output.txt
echo "ep.C.9 END" >> mpstat.txt
echo "ep.C.9 END" >> dstat.csv
echo "Comecou ep.C.16"
echo "ep.C.16 START" >> mpstat.txt
echo "ep.C.16 START" >> dstat.csv
mpirun -np 16 ./ep.C.16 >> output.txt
echo "ep.C.16 END" >> mpstat.txt
echo "ep.C.16 END" >> dstat.csv
echo "Comecou cg.A.1"
echo "cg.A.1 START" >> mpstat.txt
echo "cg.A.1 START" >> dstat.csv
mpirun -np 1 ./cg.A.1 >> output.txt
echo "cg.A.1 END" >> mpstat.txt
echo "cg.A.1 END" >> dstat.csv
echo "Comecou cg.A.4"
echo "cg.A.4 START" >> mpstat.txt
echo "cg.A.4 START" >> dstat.csv
mpirun -np 4 ./cg.A.4 >> output.txt
echo "cg.A.4 END" >> mpstat.txt
echo "cg.A.4 END" >> dstat.csv
echo "Comecou cg.A.8"
echo "cg.A.8 START" >> mpstat.txt
echo "cg.A.8 START" >> dstat.csv
mpirun -np 8 ./cg.A.8 >> output.txt
echo "cg.A.8 END" >> mpstat.txt
echo "cg.A.8 END" >> dstat.csv
echo "Comecou cg.A.16"
echo "cg.A.16 START" >> mpstat.txt
echo "cg.A.16 START" >> dstat.csv
mpirun -np 16 ./cg.A.16 >> output.txt
echo "cg.A.16 END" >> mpstat.txt
echo "cg.A.16 END" >> dstat.csv
echo "Comecou cg.B.1"
echo "cg.B.1 START" >> mpstat.txt
echo "cg.B.1 START" >> dstat.csv
mpirun -np 1 ./cg.B.1 >> output.txt
echo "cg.B.1 END" >> mpstat.txt
echo "cg.B.1 END" >> dstat.csv
echo "Comecou cg.B.4"
echo "cg.B.4 START" >> mpstat.txt
echo "cg.B.4 START" >> dstat.csv
mpirun -np 4 ./cg.B.4 >> output.txt
echo "cg.B.4 END" >> mpstat.txt
echo "cg.B.4 END" >> dstat.csv
echo "Comecou cg.B.8"
echo "cg.B.8 START" >> mpstat.txt
echo "cg.B.8 START" >> dstat.csv
mpirun -np 8 ./cg.B.8 >> output.txt
echo "cg.B.8 END" >> mpstat.txt
echo "cg.B.8 END" >> dstat.csv
echo "Comecou cg.B.16"
echo "cg.B.16 START" >> mpstat.txt
echo "cg.B.16 START" >> dstat.csv
mpirun -np 16 ./cg.B.16 >> output.txt
echo "cg.B.16 END" >> mpstat.txt
echo "cg.B.16 END" >> dstat.csv
echo "Comecou cg.C.1"
echo "cg.C.1 START" >> mpstat.txt
echo "cg.C.1 START" >> dstat.csv
mpirun -np 1 ./cg.C.1 >> output.txt
echo "cg.C.1 END" >> mpstat.txt
echo "cg.C.1 END" >> dstat.csv
echo "Comecou cg.C.4"
echo "cg.C.4 START" >> mpstat.txt
echo "cg.C.4 START" >> dstat.csv
mpirun -np 4 ./cg.C.4 >> output.txt
echo "cg.C.4 END" >> mpstat.txt
echo "cg.C.4 END" >> dstat.csv
echo "Comecou cg.C.8"
echo "cg.C.8 START" >> mpstat.txt
echo "cg.C.8 START" >> dstat.csv
mpirun -np 8 ./cg.C.8 >> output.txt
echo "cg.C.8 END" >> mpstat.txt
echo "cg.C.8 END" >> dstat.csv
echo "Comecou cg.C.16"
echo "cg.C.16 START" >> mpstat.txt
echo "cg.C.16 START" >> dstat.csv
mpirun -np 16 ./cg.C.16 >> output.txt
echo "cg.C.16 END" >> mpstat.txt
echo "cg.C.16 END" >> dstat.csv

echo "A sair da pasta iccO2"
cd ..
echo "A entrar na pasta icc03"
cd iccO3

echo "Comecou bt.A.1"
echo "bt.A.1 START" >> mpstat.txt
echo "bt.A.1 START" >> dstat.csv
mpirun -np 1 ./bt.A.1 >> output.txt
echo "bt.A.1 END" >> mpstat.txt
echo "bt.A.1 END" >> dstat.csv
echo "Comecou bt.A.4"
echo "bt.A.4 START" >> mpstat.txt
echo "bt.A.4 START" >> dstat.csv
mpirun -np 4 ./bt.A.4 >> output.txt
echo "bt.A.4 END" >> mpstat.txt
echo "bt.A.4 END" >> dstat.csv
echo "Comecou bt.A.9"
echo "bt.A.9 START" >> mpstat.txt
echo "bt.A.9 START" >> dstat.csv
mpirun -np 9 ./bt.A.9 >> output.txt
echo "bt.A.9 END" >> mpstat.txt
echo "bt.A.9 END" >> dstat.csv
echo "Comecou bt.A.16"
echo "bt.A.16 START" >> mpstat.txt
echo "bt.A.16 START" >> dstat.csv
mpirun -np 16 ./bt.A.16 >> output.txt
echo "bt.A.16 END" >> mpstat.txt
echo "bt.A.16 END" >> dstat.csv
echo "Comecou bt.B.1"
echo "bt.B.1 START" >> mpstat.txt
echo "bt.B.1 START" >> dstat.csv
mpirun -np 1 ./bt.B.1 >> output.txt
echo "bt.B.1 END" >> mpstat.txt
echo "bt.B.1 END" >> dstat.csv
echo "Comecou bt.B.4"
echo "bt.B.4 START" >> mpstat.txt
echo "bt.B.4 START" >> dstat.csv
mpirun -np 4 ./bt.B.4 >> output.txt
echo "bt.B.4 END" >> mpstat.txt
echo "bt.B.4 END" >> dstat.csv
echo "Comecou bt.B.9"
echo "bt.B.9 START" >> mpstat.txt
echo "bt.B.9 START" >> dstat.csv
mpirun -np 9 ./bt.B.9 >> output.txt
echo "bt.B.9 END" >> mpstat.txt
echo "bt.B.9 END" >> dstat.csv
echo "Comecou bt.B.16"
echo "bt.B.16 START" >> mpstat.txt
echo "bt.B.16 START" >> dstat.csv
mpirun -np 16 ./bt.B.16 >> output.txt
echo "bt.B.16 END" >> mpstat.txt
echo "bt.B.16 END" >> dstat.csv
echo "Comecou bt.C.1"
echo "bt.C.1 START" >> mpstat.txt
echo "bt.C.1 START" >> dstat.csv
mpirun -np 1 ./bt.C.1 >> output.txt
echo "bt.C.1 END" >> mpstat.txt
echo "bt.C.1 END" >> dstat.csv
echo "Comecou bt.C.4"
echo "bt.C.4 START" >> mpstat.txt
echo "bt.C.4 START" >> dstat.csv
mpirun -np 4 ./bt.C.4 >> output.txt
echo "bt.C.4 END" >> mpstat.txt
echo "bt.C.4 END" >> dstat.csv
echo "Comecou bt.C.9"
echo "bt.C.9 START" >> mpstat.txt
echo "bt.C.9 START" >> dstat.csv
mpirun -np 9 ./bt.C.9 >> output.txt
echo "bt.C.9 END" >> mpstat.txt
echo "bt.C.9 END" >> dstat.csv
echo "Comecou bt.C.16"
echo "bt.C.16 START" >> mpstat.txt
echo "bt.C.16 START" >> dstat.csv
mpirun -np 16 ./bt.C.16 >> output.txt
echo "bt.C.16 END" >> mpstat.txt
echo "bt.C.16 END" >> dstat.csv
echo "Comecou ep.A.1"
echo "ep.A.1 START" >> mpstat.txt
echo "ep.A.1 START" >> dstat.csv
mpirun -np 1 ./ep.A.1 >> output.txt
echo "ep.A.1 END" >> mpstat.txt
echo "ep.A.1 END" >> dstat.csv
echo "Comecou ep.A.4"
echo "ep.A.4 START" >> mpstat.txt
echo "ep.A.4 START" >> dstat.csv
mpirun -np 4 ./ep.A.4 >> output.txt
echo "ep.A.4 END" >> mpstat.txt
echo "ep.A.4 END" >> dstat.csv
echo "Comecou ep.A.9"
echo "ep.A.9 START" >> mpstat.txt
echo "ep.A.9 START" >> dstat.csv
mpirun -np 9 ./ep.A.9 >> output.txt
echo "ep.A.9 END" >> mpstat.txt
echo "ep.A.9 END" >> dstat.csv
echo "Comecou ep.A.16"
echo "ep.A.16 START" >> mpstat.txt
echo "ep.A.16 START" >> dstat.csv
mpirun -np 16 ./ep.A.16 >> output.txt
echo "ep.A.16 END" >> mpstat.txt
echo "ep.A.16 END" >> dstat.csv
echo "Comecou ep.B.1"
echo "ep.B.1 START" >> mpstat.txt
echo "ep.B.1 START" >> dstat.csv
mpirun -np 1 ./ep.B.1 >> output.txt
echo "ep.B.1 END" >> mpstat.txt
echo "ep.B.1 END" >> dstat.csv
echo "Comecou ep.B.4"
echo "ep.B.4 START" >> mpstat.txt
echo "ep.B.4 START" >> dstat.csv
mpirun -np 4 ./ep.B.4 >> output.txt
echo "ep.B.4 END" >> mpstat.txt
echo "ep.B.4 END" >> dstat.csv
echo "Comecou ep.B.9"
echo "ep.B.9 START" >> mpstat.txt
echo "ep.B.9 START" >> dstat.csv
mpirun -np 9 ./ep.B.9 >> output.txt
echo "ep.B.9 END" >> mpstat.txt
echo "ep.B.9 END" >> dstat.csv
echo "Comecou ep.B.16"
echo "ep.B.16 START" >> mpstat.txt
echo "ep.B.16 START" >> dstat.csv
mpirun -np 16 ./ep.B.16 >> output.txt
echo "ep.B.16 END" >> mpstat.txt
echo "ep.B.16 END" >> dstat.csv
echo "Comecou ep.C.1"
echo "ep.C.1 START" >> mpstat.txt
echo "ep.C.1 START" >> dstat.csv
mpirun -np 1 ./ep.C.1 >> output.txt
echo "ep.C.1 END" >> mpstat.txt
echo "ep.C.1 END" >> dstat.csv
echo "Comecou ep.C.4"
echo "ep.C.4 START" >> mpstat.txt
echo "ep.C.4 START" >> dstat.csv
mpirun -np 4 ./ep.C.4 >> output.txt
echo "ep.C.4 END" >> mpstat.txt
echo "ep.C.4 END" >> dstat.csv
echo "Comecou ep.C.9"
echo "ep.C.9 START" >> mpstat.txt
echo "ep.C.9 START" >> dstat.csv
mpirun -np 9 ./ep.C.9 >> output.txt
echo "ep.C.9 END" >> mpstat.txt
echo "ep.C.9 END" >> dstat.csv
echo "Comecou ep.C.16"
echo "ep.C.16 START" >> mpstat.txt
echo "ep.C.16 START" >> dstat.csv
mpirun -np 16 ./ep.C.16 >> output.txt
echo "ep.C.16 END" >> mpstat.txt
echo "ep.C.16 END" >> dstat.csv
echo "Comecou cg.A.1"
echo "cg.A.1 START" >> mpstat.txt
echo "cg.A.1 START" >> dstat.csv
mpirun -np 1 ./cg.A.1 >> output.txt
echo "cg.A.1 END" >> mpstat.txt
echo "cg.A.1 END" >> dstat.csv
echo "Comecou cg.A.4"
echo "cg.A.4 START" >> mpstat.txt
echo "cg.A.4 START" >> dstat.csv
mpirun -np 4 ./cg.A.4 >> output.txt
echo "cg.A.4 END" >> mpstat.txt
echo "cg.A.4 END" >> dstat.csv
echo "Comecou cg.A.8"
echo "cg.A.8 START" >> mpstat.txt
echo "cg.A.8 START" >> dstat.csv
mpirun -np 8 ./cg.A.8 >> output.txt
echo "cg.A.8 END" >> mpstat.txt
echo "cg.A.8 END" >> dstat.csv
echo "Comecou cg.A.16"
echo "cg.A.16 START" >> mpstat.txt
echo "cg.A.16 START" >> dstat.csv
mpirun -np 16 ./cg.A.16 >> output.txt
echo "cg.A.16 END" >> mpstat.txt
echo "cg.A.16 END" >> dstat.csv
echo "Comecou cg.B.1"
echo "cg.B.1 START" >> mpstat.txt
echo "cg.B.1 START" >> dstat.csv
mpirun -np 1 ./cg.B.1 >> output.txt
echo "cg.B.1 END" >> mpstat.txt
echo "cg.B.1 END" >> dstat.csv
echo "Comecou cg.B.4"
echo "cg.B.4 START" >> mpstat.txt
echo "cg.B.4 START" >> dstat.csv
mpirun -np 4 ./cg.B.4 >> output.txt
echo "cg.B.4 END" >> mpstat.txt
echo "cg.B.4 END" >> dstat.csv
echo "Comecou cg.B.8"
echo "cg.B.8 START" >> mpstat.txt
echo "cg.B.8 START" >> dstat.csv
mpirun -np 8 ./cg.B.8 >> output.txt
echo "cg.B.8 END" >> mpstat.txt
echo "cg.B.8 END" >> dstat.csv
echo "Comecou cg.B.16"
echo "cg.B.16 START" >> mpstat.txt
echo "cg.B.16 START" >> dstat.csv
mpirun -np 16 ./cg.B.16 >> output.txt
echo "cg.B.16 END" >> mpstat.txt
echo "cg.B.16 END" >> dstat.csv
echo "Comecou cg.C.1"
echo "cg.C.1 START" >> mpstat.txt
echo "cg.C.1 START" >> dstat.csv
mpirun -np 1 ./cg.C.1 >> output.txt
echo "cg.C.1 END" >> mpstat.txt
echo "cg.C.1 END" >> dstat.csv
echo "Comecou cg.C.4"
echo "cg.C.4 START" >> mpstat.txt
echo "cg.C.4 START" >> dstat.csv
mpirun -np 4 ./cg.C.4 >> output.txt
echo "cg.C.4 END" >> mpstat.txt
echo "cg.C.4 END" >> dstat.csv
echo "Comecou cg.C.8"
echo "cg.C.8 START" >> mpstat.txt
echo "cg.C.8 START" >> dstat.csv
mpirun -np 8 ./cg.C.8 >> output.txt
echo "cg.C.8 END" >> mpstat.txt
echo "cg.C.8 END" >> dstat.csv
echo "Comecou cg.C.16"
echo "cg.C.16 START" >> mpstat.txt
echo "cg.C.16 START" >> dstat.csv
mpirun -np 16 ./cg.C.16 >> output.txt
echo "cg.C.16 END" >> mpstat.txt
echo "cg.C.16 END" >> dstat.csv


pkill mpstat
echo "mpstat teeminado"
pkill python
echo "dstat terminado"
echo "Programa terminado"
