hostname
echo "A entrar na pasta iccO2.."
cd ./iccO2
echo "A abrir dtat.."
dstat -d -g -l -m -p -r -s -t >> dstat.csv &
echo "dstat aberto"
echo "A abrir mpstat"
mpstat -P ALL 1 100000 >> mpstat.txt &
echo "mpstat aberto"

INSCRIPT=-1

for i in {1..16}
do

echo "Comecou bt.A.x $i"
echo "bt.A.x START $i" >> mpstat.txt
echo "bt.A.x START $i" >> dstat.csv
./bt.A.x >> output.txt &
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

for i in {1..16}
do

echo "Comecou bt.B.x $i"
echo "bt.B.x START $i" >> mpstat.txt
echo "bt.B.x START $i" >> dstat.csv
./bt.B.x >> output.txt &
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

for i in {1..16}
do

echo "Comecou bt.C.x $i"
echo "bt.C.x START $i" >> mpstat.txt
echo "bt.C.x START $i" >> dstat.csv
./bt.C.x >> output.txt &
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
