# Terraform Cloud Demo

### How this repository works

*Note*: Still WIP.

Two branches:

 * develop
 * main

Each branch is connect to a Terraform Cloud workspace (```staging``` or ```production```), specified in ```environment``` folder.

Any commit pushed in one of these branches launches a github action (see ```.github/workflows``` folder) that will apply the infrastructure changes on AWS Cloud using Terraform Cloud.

### Next steps

 * Have a single workflow for deploying in staging or prod workspace according to the origin branch where the last commit was pushed
 * Generate TFC workspaces automatically configured "on-the-fly" (e.g. no need to manually add environment variables on TFC for AK/SK : grab them from another workspace ?)
 * Improve the workflow to destroy the stack based on "some event" (f.i. a specified tag pushed on the branch itself like ```destroy-me```)