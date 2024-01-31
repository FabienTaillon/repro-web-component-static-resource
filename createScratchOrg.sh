echo '##### CREATING SCRATCH ORG #####'
sf org create scratch --definition-file config/project-scratch-def.json --alias MyReproScratchOrg --set-default
echo '##### PUSHING METADATA #####'
sf project deploy start --ignore-conflicts --target-org MyReproScratchOrg
echo '##### OPENING SCRATCH ORG #####'
sf org open --path lightning/app/standard__Service --target-org MyReproScratchOrg