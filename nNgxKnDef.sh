#!/bin/bash
#   echo "$SrvBin/nNgxKnDef.sh"
cat >$SrvEtcKnz/$KnN  <<EOF
#!/bin/bash
echo "Start: nNgxKnDef: $KnN  -  \$0" # $0 only works for Exec, not Source (gives SelfPFN)
export KnRtN=$KnN  # \$KnPkgN - Here, use Specific KnN (vs Generic Name)
export KnPkgN=$KnPkgN	 # (At least for Nginx) this is GENERIC name, so diff KnDef's collide
export DkrRtImgN=$DkrImgN   # @@@ Base (eg MariaDB) vs RT (eg Nginx)   ^^^ per SrvStk !!!
export KnKlsPFN=\$SrvLib/$KnKlsN.sh
export ThisKnCtrlHPFN=\$SrvEtcKnz/\$KnRtN;	echo -e "ThisKnCtrlHPFN>>>\$ThisKnCtrlHPFN\n"
export SvrStkN=$SvrStkN  #Fut: export SvrStkN=Pro  # | Tst | Dev ??? @@@@
export KnGrpN=$KnGrpN
	export DkrRunDCmd='$DkrRunDCmd'
	export DkrNet=$DkrNet
export RunFQHPFN=\$RunHP/\$KnPkgN	  # used to hold rt.envs (w/CID) GenericN vs SpecificN
export KnBasHP=\$SrvKnz/\$KnRtN   #export KnAltRootHP=/srv/PDZ/MyPodName  @@@ xxx 
	export KnDatHP=\$SrvWww
	export KnEtcHP=\$KnBasHP/etc/\$KnPkgN
	export KnLogHP=\$KnBasHP/log/\$KnPkgN
# -- Derived by rule... #Fut: export FQKnRtN=\${SvrStkN}._.\${KnGrpN}._.\${KnRtN}
export FQKnRtN="\${KnGrpN}._.\$KnPkgN"
export DkrRtLbls=" --label stk=\$SvrStkN  --label grp=\$KnGrpN --label kanT=\$KnPkgN "
export DkrVolGrp=" -v \$KnEtcHP/:/etc/\$KnPkgN/:ro  -v \$KnLogHP/:/var/log/\$KnPkgN  \
	-v \$KnDatHP:/srv/www/ "
EOF
