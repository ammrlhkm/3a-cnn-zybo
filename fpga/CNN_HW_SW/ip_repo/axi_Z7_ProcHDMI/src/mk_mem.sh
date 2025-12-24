data_n=10
mot_n=10
addr_n=3
nom="mem2p_${mot_n}_${data_n}"
mkdir -p $nom
# test
sarggs="-e 's/\$mem_nombre_mot/${mot_n}/g' -e 's/\$mem_largeur_mot/${data_n}/g' -e 's/\$mem_nom/${nom}/g'" 
echo "$sarggs"
sed '$sarggs' mem_artix.xci > $nom/$nom.xci
