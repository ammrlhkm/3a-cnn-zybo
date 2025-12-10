data_n=8
mot_n=200
addr_n=8
nom="mem2p_test_${mot_n}_${data_n}"
mkdir -p $nom
# test
sarggs="-e 's/\$mem_nombre_mot/${mot_n}/g' -e 's/\$mem_largeur_mot/${data_n}/g' -e 's/\$mem_nom/${nom}/g'" 
echo "$sarggs"
sed '$sarggs' mem_artix.xci > $nom/$nom.xci
