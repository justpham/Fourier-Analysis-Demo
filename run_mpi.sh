#!/usr/bin/env bash
set -euo pipefail

NP="${1:-4}"
INPUT_FILE="${2:-}"
OUTPUT_FILE="${3:-}"

if [[ -z "${INPUT_FILE}" || -z "${OUTPUT_FILE}" ]]; then
  echo "Usage: $0 [num_processors] <signal_input_file> <plot_output_file>"
  exit 1
fi

mpic++ -o program fourier.cpp
mpiexec -mca btl self,tcp -np "${NP}" ./program "${INPUT_FILE}" "${OUTPUT_FILE}"
