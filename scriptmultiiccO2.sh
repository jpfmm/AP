echo hostname
echo "A entrar na pasta iccO2.."
cd ./iccO2
echo "A abrir dtat.."
dstat -d -g -l -m -p -r -s -t >> dstat.csv &
echo "dstat aberto"
echo "A abrir mpstat"
mpstat -P ALL 1 100000 >> mpstat.txt &
echo "mpstat aberto"

INSCRIPT=-1
echo "COMECOU BT.A.X"
for i in {1..50}
do
echo "Comecou bt.A.x $i"
./bt.A.x >> output.txt &
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
echo "COMECOU BT.B.X"
for i in {1..32}
do
echo "Comecou bt.B.x $i"
./bt.B.x >> output.txt &
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
echo "COMECOU BT.C.X"
for i in {1..32}
do
echo "Comecou bt.C.x $i"
./bt.C.x >> output.txt &
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
