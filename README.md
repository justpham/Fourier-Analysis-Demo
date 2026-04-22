# Fourier-Analysis-Demo

A simple MPI-based Fourier analysis demo in C++.

## What this project does
- Splits a large signal across MPI processes
- Computes partial Fourier/autocorrelation-style sums in parallel
- Gathers and combines results on rank 0
- Writes period-vs-sum output for plotting

## Build
```bash
mpic++ -o program fourier.cpp
```

## Run
```bash
mpiexec -mca btl self,tcp -np 4 ./program <signal_input_file> <plot_output_file>
```

`4` is the number of processors.

## Simple compile/run script
Use:
```bash
./run_mpi.sh 4 <signal_input_file> <plot_output_file>
```
