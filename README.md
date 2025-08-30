## MiNT Datasets

This repository hosts the datasets used in the paper [**MiNT: Multi-Network Training for Transfer Learning on Temporal Graphs**](https://arxiv.org/abs/2406.10426).

### Quick Start

Fetch and extract all dataset files in one line:

```sh
curl -LsSf https://raw.githubusercontent.com/Jacob-Chmura/mint-datasets/main/fetch.sh | bash
```

The datasets will be written to ```./mint_datasets/```.

> \[!NOTE\]
> The datasets require xx.xx GB of storage.

#### Raw Files

By default, the script will download pre-processed files according to [preprocess.py](./preprocess.py).
You can optionally fetch the raw files only by issuing:

```sh
curl -LsSf https://raw.githubusercontent.com/Jacob-Chmura/mint-datasets/main/fetch.sh | bash --raw
```

> \[!NOTE\]
> The raw files require xx.xx GB of storage.

### Citation

Please cite the paper if you use these datasets:

```
@article{Shamsi2025MiNT,
  title        = {MiNT: Multi-Network Training for Transfer Learning on Temporal Graphs},
  author       = {Shamsi, Kiarash and others},
  journal      = {arXiv preprint arXiv:2406.10426},
  year         = {2025},
  url          = {https://arxiv.org/abs/2406.10426}
}
```
