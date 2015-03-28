hostname
echo "A entrar na pasta iccO2.."
cd ./iccO2
echo "A abrir dtat.."
dstat -tcmld >> dstatCG.csv &
echo "dstat aberto"
echo "A abrir mpstat"
mpstat -P ALL 1 100000 >> mpstatCG.txt &
echo "mpstat aberto"

INSCRIPT=-1
echo "COMECOU CG.A.X"
for i in {1..50}
do
echo "Comecou cg.A.x $i"
./cg.A.x >> output.txt &
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
echo "COMECOU CG.B.X"
echo "CG.B" >> dstatCG.csv
echo "CG.B" >> mpstatCG.txt
for i in {1..32}
do
echo "Comecou cg.B.x $i"
./cg.B.x >> output.txt &
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
echo "COMECOU CG.C.X"
echo "CG.C" >> dstatCG.csv
echo "CG.C" >> mpstatCG.txt
for i in {1..32}
do
echo "Comecou cg.C.x $i"
./cg.C.x >> output.txt &
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
