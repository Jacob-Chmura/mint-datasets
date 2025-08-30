## MiNT Datasets

Hosted datasets for the paper [**MiNT: Multi-Network Training for Transfer Learning on Temporal Graphs**](https://arxiv.org/abs/2406.10426).

### Quick Start

To fetch all the datasets at once:

```sh
curl -LsSf https://raw.githubusercontent.com/Jacob-Chmura/mint-datasets/main/fetch.sh | bash
```

> \[!NOTE\]
> ~14.5 GB of storage is required for all the data.

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
|--------------|---------------------|----------------------|
| 0x0          | 122                 | 20                   |
| aDAI         | 152                 | 21                   |
| ADX          | 98                  | 14                   |
| AIOZ         | 86                  | 17                   |
| ALBT         | 127                 | 30                   |
| ANT          | 157                 | 28                   |
| ARC          | 48                  | 9                    |
| AUDIO        | 274                 | 57                   |
| aUSDC        | 357                 | 37                   |
| BAG          | 97                  | 17                   |
| bendWETH     | 79                  | 9                    |
| BEPRO        | 96                  | 18                   |
| BITCOIN      | 242                 | 47                   |
| BOB          | 164                 | 36                   |
| BTRFLY       | 83                  | 14                   |
| cDAI         | 280                 | 49                   |
| CELR         | 182                 | 37                   |
| CMT          | 127                 | 34                   |
| CRU          | 92                  | 15                   |
| crvUSD       | 49                  | 6                    |
| DERC         | 87                  | 17                   |
| DINO         | 73                  | 15                   |
| DODO         | 313                 | 53                   |
| DOGE2.0      | 38                  | 7                    |
| DPI          | 189                 | 36                   |
| DRGN         | 258                 | 61                   |
| ETH2x-FLI    | 163                 | 24                   |
| EVERMOON     | 57                  | 10                   |
| FEG          | 299                 | 81                   |
| GHST         | 137                 | 26                   |
| GLM          | 182                 | 34                   |
| HOICHI       | 57                  | 8                    |
| HOP          | 69                  | 15                   |
| INJ          | 230                 | 46                   |
| INU          | 39                  | 8                    |
| IOTX         | 224                 | 46                   |
| KP3R         | 352                 | 56                   |
| LADYS        | 133                 | 29                   |
| LINA         | 175                 | 32                   |
| LQTY         | 283                 | 49                   |
| LUSD         | 332                 | 52                   |
| MAHA         | 68                  | 13                   |
| Metis        | 267                 | 50                   |
| MIM          | 216                 | 34                   |
| MIR          | 349                 | 63                   |
| Mog          | 134                 | 17                   |
| MUTE         | 66                  | 11                   |
| NOIA         | 142                 | 28                   |
| OHM          | 286                 | 41                   |
| ORN          | 182                 | 33                   |
| PICKLE       | 326                 | 50                   |
| POLS         | 162                 | 36                   |
| POOH         | 88                  | 19                   |
| PRE          | 86                  | 18                   |
| PSYOP        | 100                 | 22                   |
| PUSH         | 70                  | 12                   |
| QOM          | 94                  | 19                   |
| QSP          | 224                 | 54                   |
| RARI         | 404                 | 85                   |
| REP          | 165                 | 38                   |
| REPv2        | 148                 | 25                   |
| RFD          | 112                 | 25                   |
| RGT          | 171                 | 31                   |
| RLB          | 158                 | 28                   |
| RSR          | 158                 | 30                   |
| SDEX         | 80                  | 13                   |
| ShibDoge     | 108                 | 27                   |
| sILV2        | 73                  | 15                   |
| SLP          | 72                  | 7                    |
| SPONGE       | 58                  | 13                   |
| STARL        | 252                 | 56                   |
| steCRV       | 172                 | 21                   |
| stkAAVE      | 87                  | 21                   |
| SUPER        | 378                 | 75                   |
| SWAP         | 398                 | 86                   |
| TNT          | 239                 | 56                   |
| TRAC         | 230                 | 48                   |
| TURBO        | 139                 | 32                   |
| TVK          | 162                 | 32                   |
| WOJAK        | 128                 | 27                   |
| WOOL         | 261                 | 47                   |
| XCN          | 81                  | 13                   |
| Yf-DAI       | 181                 | 33                   |
| YFII         | 297                 | 50                   |
