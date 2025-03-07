# boldigger3-docker

BOLDigger3 is an automated tool designed for DNA sequence identification through BOLDSystems v5. 

The source of the software is here: https://github.com/DominikBuchner/BOLDigger3

This image contains a running setup.

Usage:

```bash
(user)-$ docker run --rm -v $(pwd):/in -w /in boldigger3:1.4.1 boldigger3 identify testdata/test_10.fasta --db 1 --mode 1
```

