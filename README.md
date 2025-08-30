## MiNT Datasets

This repository hosts the datasets for the paper [**MiNT: Multi-Network Training for Transfer Learning on Temporal Graphs**](https://arxiv.org/abs/2406.10426).

### Quick Start

Fetch the datasets in one line:

```sh
curl -LsSf https://raw.githubusercontent.com/Jacob-Chmura/mint-datasets/main/fetch.sh | bash
```

The datasets will be written to ```./mint_datasets/```.

> \[!NOTE\]
> xx.xx GB of storage is required.

#### Raw Files

By default, the script downloads files processed according to [preprocess.py](./preprocess.py).
You can optionally fetch the raw files via:

```sh
curl -LsSf https://raw.githubusercontent.com/Jacob-Chmura/mint-datasets/main/fetch.sh | bash --raw
```

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
