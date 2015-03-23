echo "A entrar na pasta gccO2.."
cd ./gcc02
echo "A abrir dtat.."
dstat -d -g -l -m -p -r -s -t >> dstat.csv &
echo "dstat aberto"
echo "A abrir mpstat"
mpstat -P ALL 1 10800 >> mpstat.txt &
echo "mpstat aberto"
echo "Comecou bt.A.x"
echo "bt.A.x START" >> mpstat.txt
echo "bt.A.x START" >> dstat.csv
./bt.A.x >> output.txt
echo "bt.A.x END" >> mpstat.txt
echo "bt.A.x END" >> dstat.csv
echo "Comecou bt.B.x"
echo "bt.B.x START" >> mpstat.txt
echo "bt.B.x START" >> dstat.csv
./bt.B.x >> output.txt
echo "bt.B.x END" >> mpstat.txt
echo "bt.B.x END" >> dstat.csv
echo "Comecou bt.C.x"
echo "bt.C.x START" >> mpstat.txt
echo "bt.C.x START" >> dstat.csv
./bt.C.x >> output.txt
echo "bt.C.x END" >> mpstat.txt
echo "bt.C.x END" >> dstat.csv
echo "Comecou cg.A.x"
echo "cg.A.x START" >> mpstat.txt
echo "cg.A.x START" >> dstat.csv
./cg.A.x >> output.txt
echo "cg.A.x END" >> mpstat.txt
echo "cg.A.x END" >> dstat.csv
echo "Comecou cg.B.x"
echo "cg.B.x START" >> mpstat.txt
echo "cg.B.x START" >> dstat.csv
./cg.B.x >> output.txt
echo "cg.B.x END" >> mpstat.txt
echo "cg.B.x END" >> dstat.csv
echo "Comecou cg.C.x"
echo "cg.C.x START" >> mpstat.txt
echo "cg.C.x START" >> dstat.csv
./cg.C.x >> output.txt
echo "cg.C.x END" >> mpstat.txt
echo "cg.C.x END" >> dstat.csv
echo "Comecou ep.A.x"
echo "ep.A.x START" >> mpstat.txt
echo "ep.A.x START" >> dstat.csv
./ep.A.x >> output.txt
echo "ep.A.x END" >> mpstat.txt
echo "ep.A.x END" >> dstat.csv
echo "Comecou ep.B.x"
echo "ep.B.x START" >> mpstat.txt
echo "ep.B.x START" >> dstat.csv
./ep.B.x >> output.txt
echo "ep.B.x END" >> mpstat.txt
echo "ep.B.x END" >> dstat.csv
echo "Comecou ep.C.x"
echo "ep.C.x START" >> mpstat.txt
echo "ep.C.x START" >> dstat.csv
./ep.C.x >> output.txt
echo "ep.C.x END" >> mpstat.txt
echo "ep.C.x END" >> dstat.csv
echo "Comecou fp.A.x"
echo "fp.A.x START" >> mpstat.txt
echo "fp.A.x START" >> dstat.csv
./fp.A.x >> output.txt
echo "fp.A.x END" >> mpstat.txt
echo "fp.A.x END" >> dstat.csv
echo "Comecou fp.B.x"
echo "fp.B.x START" >> mpstat.txt
echo "fp.B.x START" >> dstat.csv
./fp.B.x >> output.txt
echo "fp.B.x END" >> mpstat.txt
echo "fp.B.x END" >> dstat.csv

echo "A sair da pasta gccO2"
cd ..
echo "A entrar na pasta gcc03"
cd gccO3

echo "Comecou bt.A.x"
echo "bt.A.x START" >> mpstat.txt
echo "bt.A.x START" >> dstat.csv
./bt.A.x >> output.txt
echo "bt.A.x END" >> mpstat.txt
echo "bt.A.x END" >> dstat.csv
echo "Comecou bt.B.x"
echo "bt.B.x START" >> mpstat.txt
echo "bt.B.x START" >> dstat.csv
./bt.B.x >> output.txt
echo "bt.B.x END" >> mpstat.txt
echo "bt.B.x END" >> dstat.csv
echo "Comecou bt.C.x"
echo "bt.C.x START" >> mpstat.txt
echo "bt.C.x START" >> dstat.csv
./bt.C.x >> output.txt
echo "bt.C.x END" >> mpstat.txt
echo "bt.C.x END" >> dstat.csv
echo "Comecou cg.A.x"
echo "cg.A.x START" >> mpstat.txt
echo "cg.A.x START" >> dstat.csv
./cg.A.x >> output.txt
echo "cg.A.x END" >> mpstat.txt
echo "cg.A.x END" >> dstat.csv
echo "Comecou cg.B.x"
echo "cg.B.x START" >> mpstat.txt
echo "cg.B.x START" >> dstat.csv
./cg.B.x >> output.txt
echo "cg.B.x END" >> mpstat.txt
echo "cg.B.x END" >> dstat.csv
echo "Comecou cg.C.x"
echo "cg.C.x START" >> mpstat.txt
echo "cg.C.x START" >> dstat.csv
./cg.C.x >> output.txt
echo "cg.C.x END" >> mpstat.txt
echo "cg.C.x END" >> dstat.csv
echo "Comecou ep.A.x"
echo "ep.A.x START" >> mpstat.txt
echo "ep.A.x START" >> dstat.csv
./ep.A.x >> output.txt
echo "ep.A.x END" >> mpstat.txt
echo "ep.A.x END" >> dstat.csv
echo "Comecou ep.B.x"
echo "ep.B.x START" >> mpstat.txt
echo "ep.B.x START" >> dstat.csv
./ep.B.x >> output.txt
echo "ep.B.x END" >> mpstat.txt
echo "ep.B.x END" >> dstat.csv
echo "Comecou ep.C.x"
echo "ep.C.x START" >> mpstat.txt
echo "ep.C.x START" >> dstat.csv
./ep.C.x >> output.txt
echo "ep.C.x END" >> mpstat.txt
echo "ep.C.x END" >> dstat.csv
echo "Comecou fp.A.x"
echo "fp.A.x START" >> mpstat.txt
echo "fp.A.x START" >> dstat.csv
./fp.A.x >> output.txt
echo "fp.A.x END" >> mpstat.txt
echo "fp.A.x END" >> dstat.csv
echo "Comecou fp.B.x"
echo "fp.B.x START" >> mpstat.txt
echo "fp.B.x START" >> dstat.csv
./fp.B.x >> output.txt
echo "fp.B.x END" >> mpstat.txt
echo "fp.B.x END" >> dstat.csv

echo "A sair da pasta gccO3"
cd ..
echo "A entrar na pasta icc02"
cd iccO2

echo "Comecou bt.A.x"
echo "bt.A.x START" >> mpstat.txt
echo "bt.A.x START" >> dstat.csv
./bt.A.x >> output.txt
echo "bt.A.x END" >> mpstat.txt
echo "bt.A.x END" >> dstat.csv
echo "Comecou bt.B.x"
echo "bt.B.x START" >> mpstat.txt
echo "bt.B.x START" >> dstat.csv
./bt.B.x >> output.txt
echo "bt.B.x END" >> mpstat.txt
echo "bt.B.x END" >> dstat.csv
echo "Comecou bt.C.x"
echo "bt.C.x START" >> mpstat.txt
echo "bt.C.x START" >> dstat.csv
./bt.C.x >> output.txt
echo "bt.C.x END" >> mpstat.txt
echo "bt.C.x END" >> dstat.csv
echo "Comecou cg.A.x"
echo "cg.A.x START" >> mpstat.txt
echo "cg.A.x START" >> dstat.csv
./cg.A.x >> output.txt
echo "cg.A.x END" >> mpstat.txt
echo "cg.A.x END" >> dstat.csv
echo "Comecou cg.B.x"
echo "cg.B.x START" >> mpstat.txt
echo "cg.B.x START" >> dstat.csv
./cg.B.x >> output.txt
echo "cg.B.x END" >> mpstat.txt
echo "cg.B.x END" >> dstat.csv
echo "Comecou cg.C.x"
echo "cg.C.x START" >> mpstat.txt
echo "cg.C.x START" >> dstat.csv
./cg.C.x >> output.txt
echo "cg.C.x END" >> mpstat.txt
echo "cg.C.x END" >> dstat.csv
echo "Comecou ep.A.x"
echo "ep.A.x START" >> mpstat.txt
echo "ep.A.x START" >> dstat.csv
./ep.A.x >> output.txt
echo "ep.A.x END" >> mpstat.txt
echo "ep.A.x END" >> dstat.csv
echo "Comecou ep.B.x"
echo "ep.B.x START" >> mpstat.txt
echo "ep.B.x START" >> dstat.csv
./ep.B.x >> output.txt
echo "ep.B.x END" >> mpstat.txt
echo "ep.B.x END" >> dstat.csv
echo "Comecou ep.C.x"
echo "ep.C.x START" >> mpstat.txt
echo "ep.C.x START" >> dstat.csv
./ep.C.x >> output.txt
echo "ep.C.x END" >> mpstat.txt
echo "ep.C.x END" >> dstat.csv
echo "Comecou fp.A.x"
echo "fp.A.x START" >> mpstat.txt
echo "fp.A.x START" >> dstat.csv
./fp.A.x >> output.txt
echo "fp.A.x END" >> mpstat.txt
echo "fp.A.x END" >> dstat.csv
echo "Comecou fp.B.x"
echo "fp.B.x START" >> mpstat.txt
echo "fp.B.x START" >> dstat.csv
./fp.B.x >> output.txt
echo "fp.B.x END" >> mpstat.txt
echo "fp.B.x END" >> dstat.csv

echo "A sair da pasta iccO2"
cd ..
echo "A entrar na pasta icc03"
cd iccO3

echo "Comecou bt.A.x"
echo "bt.A.x START" >> mpstat.txt
echo "bt.A.x START" >> dstat.csv
./bt.A.x >> output.txt
echo "bt.A.x END" >> mpstat.txt
echo "bt.A.x END" >> dstat.csv
echo "Comecou bt.B.x"
echo "bt.B.x START" >> mpstat.txt
echo "bt.B.x START" >> dstat.csv
./bt.B.x >> output.txt
echo "bt.B.x END" >> mpstat.txt
echo "bt.B.x END" >> dstat.csv
echo "Comecou bt.C.x"
echo "bt.C.x START" >> mpstat.txt
echo "bt.C.x START" >> dstat.csv
./bt.C.x >> output.txt
echo "bt.C.x END" >> mpstat.txt
echo "bt.C.x END" >> dstat.csv
echo "Comecou cg.A.x"
echo "cg.A.x START" >> mpstat.txt
echo "cg.A.x START" >> dstat.csv
./cg.A.x >> output.txt
echo "cg.A.x END" >> mpstat.txt
echo "cg.A.x END" >> dstat.csv
echo "Comecou cg.B.x"
echo "cg.B.x START" >> mpstat.txt
echo "cg.B.x START" >> dstat.csv
./cg.B.x >> output.txt
echo "cg.B.x END" >> mpstat.txt
echo "cg.B.x END" >> dstat.csv
echo "Comecou cg.C.x"
echo "cg.C.x START" >> mpstat.txt
echo "cg.C.x START" >> dstat.csv
./cg.C.x >> output.txt
echo "cg.C.x END" >> mpstat.txt
echo "cg.C.x END" >> dstat.csv
echo "Comecou ep.A.x"
echo "ep.A.x START" >> mpstat.txt
echo "ep.A.x START" >> dstat.csv
./ep.A.x >> output.txt
echo "ep.A.x END" >> mpstat.txt
echo "ep.A.x END" >> dstat.csv
echo "Comecou ep.B.x"
echo "ep.B.x START" >> mpstat.txt
echo "ep.B.x START" >> dstat.csv
./ep.B.x >> output.txt
echo "ep.B.x END" >> mpstat.txt
echo "ep.B.x END" >> dstat.csv
echo "Comecou ep.C.x"
echo "ep.C.x START" >> mpstat.txt
echo "ep.C.x START" >> dstat.csv
./ep.C.x >> output.txt
echo "ep.C.x END" >> mpstat.txt
echo "ep.C.x END" >> dstat.csv
echo "Comecou fp.A.x"
echo "fp.A.x START" >> mpstat.txt
echo "fp.A.x START" >> dstat.csv
./fp.A.x >> output.txt
echo "fp.A.x END" >> mpstat.txt
echo "fp.A.x END" >> dstat.csv
echo "Comecou fp.B.x"
echo "fp.B.x START" >> mpstat.txt
echo "fp.B.x START" >> dstat.csv
./fp.B.x >> output.txt
echo "fp.B.x END" >> mpstat.txt
echo "fp.B.x END" >> dstat.csv

pkill mpstat
echo "mpstat teeminado"
pkill python
echo "dstat terminado"
echo "Programa terminado"
