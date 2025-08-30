#!/usr/bin/env bash
set -eou pipefail

SAVE_DIRECTORY="./mint_data"
VERSION_FILE="./VERSION"
DATASETS_FILE="./DATASETS"
DATASET=""

print_usage() {
    echo "Usage: $0 [--dataset NAME]"
    echo
    echo "Download MiNT dataset(s) from GitHub Releases."
    echo
    echo "Options:"
    echo "  --dataset NAME   Download only the specified dataset (default: download all)"
    echo "  -h, --help       Show this help message"
}

parse_args() {
    while [[ $# -gt 0 ]]; do
        case "$1" in
            --dataset)
                DATASET="$2"
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

get_dataset_names() {
    if [[ ! -f "$DATASETS_FILE" ]]; then
        echo "datasets.txt not found at $DATASETS_FILE" >&2
        exit 1
    fi
    mapfile -t DATASETS < "$DATASETS_FILE"
}

fetch_dataset() {
    local dataset_name=$1
    local url=$2

    mkdir -p "$SAVE_DIRECTORY"

    local zip_file="$SAVE_DIRECTORY/${dataset_name}.zip"
    echo "[*] Downloading $dataset_name from $url to $zip_file ..."
    wget -q "$url/${dataset_name}.zip" -O "$zip_file" || {
        echo "ERROR: Failed to download $dataset_name from $url" >&2
        exit 1
    }

    echo "[*] Extracting $dataset_name ..."
    unzip -qo "$zip_file" -d "$SAVE_DIRECTORY/$dataset_name" || {
        echo "ERROR: Failed to unzip $dataset_name into $SAVE_DIRECTORY/$dataset_name" >&2
        exit 1
    }

    rm -f "$zip_file"
}

main() {
    parse_args "$@"
    mkdir -p "$SAVE_DIRECTORY"

    VERSION=$(get_version)
    BASE_URL="https://github.com/Jacob-Chmura/mint-datasets/releases/download/$VERSION"

    get_dataset_names

    if [[ -n "$DATASET" ]]; then
        echo "[*] Fetching MiNT dataset '$DATASET' $VERSION ..."
        if [[ ! " ${DATASETS[*]} " =~ " $DATASET " ]]; then
            echo "Dataset '$DATASET' not found in datasets.txt" >&2
            exit 1
        fi
        fetch_dataset "$DATASET" "$BASE_URL"
    else
        echo "[*] Fetching all MiNT datasets $VERSION ..."
        for ds in "${DATASETS[@]}"; do
            fetch_dataset "$ds" "$BASE_URL"
        done
    fi

    echo "[✓] MiNT Data $VERSION ready in $SAVE_DIRECTORY"
}

main "$@"
