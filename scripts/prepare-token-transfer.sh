#!/bin/bash
#
#  Use this script to prepare a MNDE transfer from GR1LBT4cU89cJWE74CP6BsJTf2kriQ9TX59tbDsfxgSi to [destination-account]
#  the trasnfer will be uploaded to be approved by Multisig#4
#
#  the amount here is in not in decimal. so if you wanted to transfer $100, the amount is 100
#
#  [destination-account] can be a native account (the MNDE associated token account, ATA, will be selected and created if needed)
#
#  Example: To prepare a transfer of 1000 MNDE to ORCA-mSOL pool incentives (DJLZ8xV7ZzEKFXtuA7TDUBGnzikHBXB9y9EpDyddcQdK), the command is:
#
#  > bash scripts/prepare-mnde-transfer 1000 DJLZ8xV7ZzEKFXtuA7TDUBGnzikHBXB9y9EpDyddcQdK orca
#
MULTISIG_4_TREASURY=3w62UDPYVicBxUGVdEHqPobkqQJDtq3yJS2PFapug5F3
set -ex
./target/debug/multisig --cluster mainnet --multisig-program-id BLg8mSPvEjzSkbGdE9mRJfTSm7EauYgzFsWhERKn1gRm propose-spl-token-transfer \
    --amount $1 \
    --from Be84qpUL6269yms5PtU2sJHgaRwn4ni8Vfcezi8uouMw \
    --to $2 \
    --multisig-address $MULTISIG_4_TREASURY \
    --auth BX1VZoS4sDyBeXWuLzfbngYtdJGEEBK39PzUGfWYpFNu
