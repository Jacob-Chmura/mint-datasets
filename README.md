## MiNT Datasets

This repository hosts datasets for the paper [**MiNT: Multi-Network Training for Transfer Learning on Temporal Graphs**](https://arxiv.org/abs/2406.10426).

### Quick Start

To fetch all the datasets at once:

```sh
curl -LsSf https://raw.githubusercontent.com/Jacob-Chmura/mint-datasets/main/fetch.sh | bash
```

> \[!NOTE\]
> xx.xx GB of storage is required for all the data.

You can also fetch a single dataset with the `--dataset` flag:

```sh
curl -LsSf https://raw.githubusercontent.com/Jacob-Chmura/mint-datasets/main/fetch.sh | bash -s -- --dataset DATASET_NAME
```

#### Data Format

Each dataset will be stored in ```./mint_data/{DATASET_NAME}``` with the following schema:

- `edge_list.csv`
  | Column Name | Type |  Description |
  |----------|:-------------:|------:|
  | source | string | TODO |
  | destination | string | TODO |
  | weight | float | TODO |
  | date | string | TODO |
  | snapshot | integer | TODO |

- `labels.csv`
  | Column Name | Type |  Description |
  |----------|:-------------:|------:|
  | TODO | TODO | TODO |


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

### Datasets List

| Dataset Name | Size (MB) Unzipped | Size (MB) Compressed |
|--------------|------------------|--------------------|
| 0x0          | RAW_MB           | ZIP_MB             |
| aDAI         | RAW_MB           | ZIP_MB             |
| aUSDC        | RAW_MB           | ZIP_MB             |
| ADX          | RAW_MB           | ZIP_MB             |
| AIOZ         | RAW_MB           | ZIP_MB             |
| ALBT         | RAW_MB           | ZIP_MB             |
| ANT          | RAW_MB           | ZIP_MB             |
| ARC          | RAW_MB           | ZIP_MB             |
| AUDIO        | RAW_MB           | ZIP_MB             |
| bendWETH     | RAW_MB           | ZIP_MB             |
| BAG          | RAW_MB           | ZIP_MB             |
| BEPRO        | RAW_MB           | ZIP_MB             |
| BITCOIN      | RAW_MB           | ZIP_MB             |
| BOB          | RAW_MB           | ZIP_MB             |
| BTRFLY       | RAW_MB           | ZIP_MB             |
| cDAI         | RAW_MB           | ZIP_MB             |
| crvUSD       | RAW_MB           | ZIP_MB             |
| CELR         | RAW_MB           | ZIP_MB             |
| CMT          | RAW_MB           | ZIP_MB             |
| CRU          | RAW_MB           | ZIP_MB             |
| DERC         | RAW_MB           | ZIP_MB             |
| DINO         | RAW_MB           | ZIP_MB             |
| DODO         | RAW_MB           | ZIP_MB             |
| DOGE2.0      | RAW_MB           | ZIP_MB             |
| DPI          | RAW_MB           | ZIP_MB             |
| DRGN         | RAW_MB           | ZIP_MB             |
| ETH2x-FLI    | RAW_MB           | ZIP_MB             |
| EVERMOON     | RAW_MB           | ZIP_MB             |
| FEG          | RAW_MB           | ZIP_MB             |
| GHST         | RAW_MB           | ZIP_MB             |
| GLM          | RAW_MB           | ZIP_MB             |
| HOICHI       | RAW_MB           | ZIP_MB             |
| HOP          | RAW_MB           | ZIP_MB             |
| INJ          | RAW_MB           | ZIP_MB             |
| INU          | RAW_MB           | ZIP_MB             |
| IOTX         | RAW_MB           | ZIP_MB             |
| KP3R         | RAW_MB           | ZIP_MB             |
| LADYS        | RAW_MB           | ZIP_MB             |
| LINA         | RAW_MB           | ZIP_MB             |
| LQTY         | RAW_MB           | ZIP_MB             |
| LUSD         | RAW_MB           | ZIP_MB             |
| MAHA         | RAW_MB           | ZIP_MB             |
| Metis        | RAW_MB           | ZIP_MB             |
| MIM          | RAW_MB           | ZIP_MB             |
| MIR          | RAW_MB           | ZIP_MB             |
| MOG          | RAW_MB           | ZIP_MB             |
| MUTE         | RAW_MB           | ZIP_MB             |
| NOIA         | RAW_MB           | ZIP_MB             |
| OHM          | RAW_MB           | ZIP_MB             |
| ORN          | RAW_MB           | ZIP_MB             |
| PICKLE       | RAW_MB           | ZIP_MB             |
| POLS         | RAW_MB           | ZIP_MB             |
| POOH         | RAW_MB           | ZIP_MB             |
| PRE          | RAW_MB           | ZIP_MB             |
| PSYOP        | RAW_MB           | ZIP_MB             |
| PUSH         | RAW_MB           | ZIP_MB             |
| QOM          | RAW_MB           | ZIP_MB             |
| QSP          | RAW_MB           | ZIP_MB             |
| RARI         | RAW_MB           | ZIP_MB             |
| REP          | RAW_MB           | ZIP_MB             |
| REPv2        | RAW_MB           | ZIP_MB             |
| RFD          | RAW_MB           | ZIP_MB             |
| RGT          | RAW_MB           | ZIP_MB             |
| RLB          | RAW_MB           | ZIP_MB             |
| RSR          | RAW_MB           | ZIP_MB             |
| sILV2        | RAW_MB           | ZIP_MB             |
| steCRV       | RAW_MB           | ZIP_MB             |
| stkAAVE      | RAW_MB           | ZIP_MB             |
| SDEX         | RAW_MB           | ZIP_MB             |
| SLP          | RAW_MB           | ZIP_MB             |
| SPONGE       | RAW_MB           | ZIP_MB             |
| STARL        | RAW_MB           | ZIP_MB             |
| SUPER        | RAW_MB           | ZIP_MB             |
| SWAP         | RAW_MB           | ZIP_MB             |
| ShibDoge     | RAW_MB           | ZIP_MB             |
| TNT          | RAW_MB           | ZIP_MB             |
| TRAC         | RAW_MB           | ZIP_MB             |
| TURBO        | RAW_MB           | ZIP_MB             |
| TVK          | RAW_MB           | ZIP_MB             |
| WOJAK        | RAW_MB           | ZIP_MB             |
| WOOL         | RAW_MB           | ZIP_MB             |
| XCN          | RAW_MB           | ZIP_MB             |
| YFII         | RAW_MB           | ZIP_MB             |
| Yf-DAI       | RAW_MB           | ZIP_MB             |

