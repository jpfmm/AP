hostname
echo "A entrar na pasta iccO2.."
cd ./iccO2
echo "A abrir dtat.."
dstat -tcmld >> dstatEP.csv &
echo "dstat aberto"
echo "A abrir mpstat"
mpstat -P ALL 1 100000 >> mpstatEP.txt &
echo "mpstat aberto"

INSCRIPT=-1
echo "COMECOU EP.A.X"
for i in {1..50}
do
echo "Comecou ep.A.x $i"
./ep.A.x >> output.txt &
sleep 1
done
for job in `jobs -p`
do 
echo $job
	if [ "$INSCRIPT" == "1" ];
	then 
	wait $job
	else
	let "INSCRIPT += 1"
	fi
echo "terminou"
done

INSCRIPT=-1
echo "COMECOU EP.B.X"
echo "EP.B" >> dstatEP.csv
echo "EP.B" >> mpstatEP.txt
for i in {1..32}
do
echo "Comecou ep.B.x $i"
./ep.B.x >> output.txt &
sleep 1
done
for job in `jobs -p`
do 
echo $job
	if [ "$INSCRIPT" == "1" ];
	then 
	wait $job
	else
	let "INSCRIPT += 1"
	fi
echo "terminou"
done

INSCRIPT=-1
echo "COMECOU EP.C.X"
echo "EP.C" >> dstatEP.csv
echo "EP.C" >> mpstatEP.txt
for i in {1..32}
do
echo "Comecou ep.C.x $i"
./ep.C.x >> output.txt &
sleep 1
done
for job in `jobs -p`
do 
echo $job
	if [ "$INSCRIPT" == "1" ];
	then 
	wait $job
	else
	let "INSCRIPT += 1"
	fi
echo "terminou"
done

pkill mpstat
echo "mpstat teeminado"
pkill python
echo "dstat terminado"
echo "Programa terminado"
