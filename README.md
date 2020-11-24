# Terraform Cloud Demo

### How this repository works

*Note*: Still WIP.

Two branches:

 * develop
 * main

Each branch is connect to a Terraform Cloud workspace, specified in ```environment``` folder.

Any commit pushed in one of these branches launches a github action (see ```.github/workflows``` folder) that will apply the infrastructure changes on AWS Cloud using Terraform Cloud.

### Next steps

 * Have only one workflow for deploying in staging or prod environment according to the origin branch where the last commit was pushed
 * Generate TFC workspaces on-the-fly without need of adding env varibles (grab them from another workspace ?)
 * Improve the workflow to destroy the stack based on something (f.i. a specified tag on the branch itself like ```destroy-me```)