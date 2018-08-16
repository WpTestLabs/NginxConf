#!/bin/bash
#   echo "$SrvBin/nNgxKn.sh"

echo "--- Start: nNgxKn.sh - for \$Srv: $Srv"
if [[ -z "$Srv" ]]; then  echo -e "\n** \$Srv is not defined! **\n"; exit; fi
export KnN=tNgxKn   # @@@@>> $1  @@@@ check if KnN already in use !!!
export KnPkgN=nginx
export DkrImgN=nginx:mainline-alpine
export KnKlsN=cfNgxDkrLib
export DkrRunDCmd=''
export KnGrpN=ZOLO
export DkrNet=--net=host
nNgxKnDef.sh  $KnN  $DkrImgN
[[ -e $SrvEtcKnz/$KnPkgN ]] || ln -sf $KnN $SrvEtcKnz/$KnPkgN
