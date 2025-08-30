#!/usr/bin/env bash
set -eou pipefail

SAVE_DIRECTORY="./mint_datasets"
MODE="processed"

VERSION="v0.1"
BASE_URL="https://github.com/Jacob-Chmura/mint-datasets/releases/download/$VERSION"
BASE_URL="http://localhost:8000"

print_usage() {
    echo "Usage: $0 [--raw]"
    echo
    echo "Download the MiNT datasets from GitHub Releases."
    echo
    echo "Options:"
    echo "  --raw       Download raw dataset files (default: processed files)"
}

parse_args() {
    for arg in "$@"; do
        case "$arg" in
            --raw)
                MODE="raw"
                ;;
            -h|--help)
                print_usage
                exit 0
                ;;
            *)
                echo "Unknown option: $arg"
                print_usage
                exit 1
                ;;
        esac
    done
}

download_and_unzip() {
    local name=$1
    local target=$2
    local url=$3

    echo "[*] Downloading $name to $SAVE_DIRECTORY/$name ..."
    wget -q "$url/$name" -O "$SAVE_DIRECTORY/$name"

    echo "[*] Extracting $name to $target ..."
    unzip -qo "$SAVE_DIRECTORY/$name" -d "$target"
    rm -f "$SAVE_DIRECTORY/$name"
}

main() {
    parse_args "$@"
    mkdir -p "$SAVE_DIRECTORY"

    if [[ "$MODE" == "processed" ]]; then
        download_and_unzip "TGS_processed.zip" "$SAVE_DIRECTORY/processed" "$BASE_URL"
    else
        download_and_unzip "TGS_raw.zip" "$SAVE_DIRECTORY/raw" "$BASE_URL"
        download_and_unzip "TGS_edgelists.zip" "$SAVE_DIRECTORY/edgelists" "$BASE_URL"
        download_and_unzip "TGS_labels.zip" "$SAVE_DIRECTORY/labels" "$BASE_URL"
    fi

    echo "[✓] Dataset ready in $SAVE_DIRECTORY"
}

main "$@"
