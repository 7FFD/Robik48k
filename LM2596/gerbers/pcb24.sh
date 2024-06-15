
for fn1 in *-F_Cu.gbr ; do
    fn2=$(echo ${fn1} | sed 's/-F_Cu/-Top/')
    mv ${fn1} ${fn2}
done

for fn1 in *-B_Cu.gbr ; do
    fn2=$(echo ${fn1} | sed 's/-B_Cu/-Bot/')
    mv ${fn1} ${fn2}
done

for fn1 in *-F_Mask.gbr ; do
    fn2=$(echo ${fn1} | sed 's/-F_Mask/-TopMask/')
    mv ${fn1} ${fn2}
done

for fn1 in *-B_Mask.gbr ; do
    fn2=$(echo ${fn1} | sed 's/-B_Mask/-BotMask/')
    mv ${fn1} ${fn2}
done

for fn1 in *-F_Silkscreen.gbr ; do
    fn2=$(echo ${fn1} | sed 's/-F_Silkscreen/-TopSilk/')
    mv ${fn1} ${fn2}
done

for fn1 in *-B_Silkscreen.gbr ; do
    fn2=$(echo ${fn1} | sed 's/-B_Silkscreen/-BotSilk/')
    mv ${fn1} ${fn2}
done

for fn1 in *-Edge_Cuts.gbr ; do
    fn2=$(echo ${fn1} | sed 's/-Edge_Cuts/-Board/')
    mv ${fn1} ${fn2}
done

for fn1 in *.drl ; do
    fn2=$(echo ${fn1} | sed 's/\.drl/-Plated.drl/')
    fnzip=$(echo ${fn1} | sed 's/\.drl//')
    mv ${fn1} ${fn2}
done

zip ${fnzip}.zip *.drl *.gbr