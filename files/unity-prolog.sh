#!/bin/sh
hostname=$(/bin/hostname)

job_tmpdir="/scratch/$hostname/${SLURM_JOB_ID}"

if [ ! -d "$job_tmpdir" ]; then
    mkdir -p $job_tmpdir
    chown -R ${SLURM_JOB_USER}:${SLURM_JOB_USER} $job_tmpdir
    chmod -R 0700 $job_tmpdir
fi