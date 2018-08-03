#!/bin/bash

function print_help {
    echo "Usage:
        --hash {hash}     Display info for transaction with hash: {hash}"
}

if [[ $1 == "--hash" ]];
then
    curl http://127.0.0.1:8000/api/services/cryptocurrency/v1/wallets/transactions/$2
else
    print_help
    exit
fi
