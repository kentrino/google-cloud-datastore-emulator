FROM google/cloud-sdk:latest

ENTRYPOINT \
    gcloud \
    beta \
    emulators \
    datastore \
    start \
    --project \
    "${PROJECT_ID}" \
    --host-port \
    "0.0.0.0:${PORT}"
