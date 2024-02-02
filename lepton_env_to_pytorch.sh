#! /usr/bin/env bash

export MASTER_ADDR=${LEPTON_JOB_NAME}-0.${LEPTON_JOB_NAME}-job-svc.ws-${LEPTON_WORKSPACE_ID}.svc.cluster.local
export MASTER_PORT=29400
export WORLD_SIZE=${LEPTON_JOB_TOTAL_WORKERS}
export WORKER_ADDRS=$(seq 1 $((LEPTON_JOB_TOTAL_WORKERS - 1)) | xargs -I {} echo ${LEPTON_JOB_NAME}-{}.${LEPTON_JOB_NAME}-job-svc.ws-${LEPTON_WORKSPACE_ID}.svc.cluster.local | paste -sd ',' -)
export NODE_RANK=${LEPTON_JOB_WORKER_INDEX}
