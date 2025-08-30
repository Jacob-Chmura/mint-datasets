## MiNT Datasets

Token datasets from the paper [**MiNT: Multi-Network Training for Transfer Learning on Temporal Graphs**](https://arxiv.org/abs/2406.10426).

> \[!NOTE\]
> Only test token data is currently available for public download.

### Quick Start

To fetch all the token datasets at once:

```sh
curl -LsSf https://raw.githubusercontent.com/Jacob-Chmura/mint-datasets/main/fetch.sh | bash
```

> \[!NOTE\]
> ~12.5 MB of storage is required for all the data.

You can also fetch a single dataset with the `--token` flag:

```sh
curl -LsSf https://raw.githubusercontent.com/Jacob-Chmura/mint-datasets/main/fetch.sh | bash -s -- --token TOKEN_NAME
```

#### Data Format

Each token dataset will be stored in ```./tokens_data/{TOKEN_NAME}.csv``` with the following schema:

| Column Name | Type |  Description |
|----------|-------------|------|
| `blockNumber` | `int` | Token Block ID |
| `timestamp` | `int` | Unix Epoch |
| `tokenAddress` | `string` | Token Address |
| `from` | `string` | Source Wallet Address |
| `to` | `string` | Destination Wallet Address |
| `value` | `float` | Value of Transaction |
| `fileBlock` | `int` | BlockFile ID |


### Citation

Please cite the paper if you use these datasets:

```
@article{Shamsi2025MiNT,
  title        = {MiNT: Multi-Network Training for Transfer Learning on Temporal Graphs},
  author       = {Shamsi, Kiarash and others},
  journal      = {arXiv preprint arXiv:2406.10426},
  year         = {2025},
}
```

### Tokens List

| Token Name | Size (MB) Unzipped    | Size (MB) Compressed |
|--------------|---------------------|----------------------|
| test-token   | 12                  |   2                  |
