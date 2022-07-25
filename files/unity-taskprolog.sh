#!/bin/sh

hostname=$(/bin/hostname)

job_tmpdir="/scratch/$hostname/${SLURM_JOB_ID}"

echo "export TMPDIR=$job_tmpdir"
echo "export TEMP=$job_tmpdir"
echo "export TEMPDIR=$job_tmpdir"
echo "export TMP=$job_tmpdir"