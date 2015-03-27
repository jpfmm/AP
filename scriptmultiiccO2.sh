hostname
echo "A entrar na pasta iccO2.."
cd ./iccO2
echo "A abrir dtat.."
dstat -d -g -l -m -p -r -s -t >> dstat.csv &
echo "dstat aberto"
echo "A abrir mpstat"
mpstat -P ALL 1 100000 >> mpstat.txt &
echo "mpstat aberto"

FAIL=0

for i in {1..16}
do

echo "Comecou bt.A.1 $i"
echo "bt.A.1 START $i" >> mpstat.txt
echo "bt.A.1 START $i" >> dstat.csv
mpirun -np 1 ./bt.A.1 & >> output.txt
done

for job in 'jobs -p'
do 
echo $job
	wait $job || let "FAIL+=1"
done

echo $FAIL

if [ "$FAIL" == "0" ];
then
echo "YAY!"
else
echo "FAIL! ($FAIL)"
fi

pkill mpstat
echo "mpstat teeminado"
pkill python
echo "dstat terminado"
echo "Programa terminado"
