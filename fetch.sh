#!/usr/bin/env bash
set -eou pipefail

SAVE_DIRECTORY="./mint_datasets"
MODE="processed"

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

get_version() {
    local version_file="./VERSION"

    if [[ ! -f "$version_file" ]]; then
        echo "VERSION file not found at $version_file" >&2
        exit 1
    fi

    local version
    version=$(<"$version_file")
    echo "$version"
}

download_and_unzip() {
    local name=$1
    local target=$2
    local url=$3

    echo "[*] Downloading $name from $url to $SAVE_DIRECTORY/$name ..."
    wget -q "$url/$name" -O "$SAVE_DIRECTORY/$name" || {
        echo "ERROR: Failed to download $name from $url" >&2
        exit 1
    }

    echo "[*] Extracting $name to $target ..."
    unzip -qo "$SAVE_DIRECTORY/$name" -d "$target" || {
        echo "ERROR: Failed to unzip $name into $target" >&2
        exit 1
    }
    rm -f "$SAVE_DIRECTORY/$name"
}

main() {
    parse_args "$@"
    mkdir -p "$SAVE_DIRECTORY"

    VERSION=$(get_version)
    echo "[*] Fetching dataset $VERSION ..."

    BASE_URL="https://github.com/Jacob-Chmura/mint-datasets/releases/download/$VERSION"
    #BASE_URL="http://localhost:8000"

    if [[ "$MODE" == "processed" ]]; then
        download_and_unzip "TGS_processed.zip" "$SAVE_DIRECTORY/processed" "$BASE_URL"
    else
        download_and_unzip "TGS_raw.zip" "$SAVE_DIRECTORY/raw" "$BASE_URL"
        download_and_unzip "TGS_edgelists.zip" "$SAVE_DIRECTORY/edgelists" "$BASE_URL"
        download_and_unzip "TGS_labels.zip" "$SAVE_DIRECTORY/labels" "$BASE_URL"
    fi

    echo "[✓] Dataset $VERSION ready in $SAVE_DIRECTORY"
}

main "$@"
