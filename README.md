# boldigger3-docker

BOLDigger3 is an automated tool designed for DNA sequence identification through BOLDSystems v5. 

The source of the software is here: https://github.com/DominikBuchner/BOLDigger3

This image contains a running setup.

Usage with Docker:

```bash
(user)-$ docker run --rm -v $(pwd):/in -w /in chrishah/boldigger3:1.4.1 boldigger3 identify testdata/test_10.fasta --db 1 --mode 1
```

Usage with Singularity (there will be warnings about installing browsers - this is nothing to worry about, just things happening in the container):
```bash
(user)-$ singularity exec docker://chrishah/boldigger3:1.4.1 boldigger3 identify testdata/test_10.fasta --db 1 --mode 1
```
