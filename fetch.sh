#!/usr/bin/env bash
set -eou pipefail

SAVE_DIRECTORY="./tokens_data"
VERSION_FILE="./VERSION"
TOKENS_FILE="./TOKENS"
TOKENS=""

print_usage() {
    echo "Usage: $0 [--dataset NAME]"
    echo
    echo "Download MiNT token dataset(s) from GitHub Releases."
    echo
    echo "Options:"
    echo "  --token NAME     Download only the specified token data (default: download all)"
    echo "  -h, --help       Show this help message"
}

parse_args() {
    while [[ $# -gt 0 ]]; do
        case "$1" in
            --token)
                TOKENS="$2"
                shift 2
                ;;
            -h|--help)
                print_usage
                exit 0
                ;;
            *)
                echo "Unknown option: $1"
                print_usage
                exit 1
                ;;
        esac
    done
}

get_version() {
    if [[ ! -f "$VERSION_FILE" ]]; then
        echo "VERSION file not found at $VERSION_FILE" >&2
        exit 1
    fi
    cat "$VERSION_FILE"
}

get_token_names() {
    if [[ ! -f "$TOKENS_FILE" ]]; then
        echo "TOKENS file not found at $TOKENS_FILE" >&2
        exit 1
    fi
    mapfile -t DATASETS < "$TOKENS_FILE"
}

fetch_dataset() {
    local dataset_name=$1
    local url=$2

    mkdir -p "$SAVE_DIRECTORY"

    local zip_file="$SAVE_DIRECTORY/${dataset_name}.zip"

    echo "[*] Downloading token $dataset_name from $url..."
    wget -q "$url/${dataset_name}.zip" -O "$zip_file" || {
        echo "ERROR: Failed to download $dataset_name from $url to $zip_file" >&2
        exit 1
    }

    unzip -qo -j "$zip_file" -d "$SAVE_DIRECTORY" || {
        echo "ERROR: Failed to unzip $dataset_name into $SAVE_DIRECTORY" >&2
        exit 1
    }

    rm -f "$zip_file"
}

main() {
    parse_args "$@"
    mkdir -p "$SAVE_DIRECTORY"

    VERSION=$(get_version)
    BASE_URL="https://github.com/Jacob-Chmura/mint-datasets/releases/download/$VERSION"

    get_token_names

    if [[ -n "$TOKENS" ]]; then
        echo "[*] Fetching MiNT token dataset '$TOKENS' $VERSION ..."
        if [[ ! " ${DATASETS[*]} " =~ " $TOKENS " ]]; then
            echo "Dataset '$TOKENS' not found in TOKENS" >&2
            exit 1
        fi
        fetch_dataset "$TOKENS" "$BASE_URL"
    else
        echo "[*] Fetching all MiNT token datasets $VERSION ..."
        for ds in "${DATASETS[@]}"; do
            fetch_dataset "$ds" "$BASE_URL"
        done
    fi

    echo "[✓] MiNT Data $VERSION ready in $SAVE_DIRECTORY"
}

main "$@"
