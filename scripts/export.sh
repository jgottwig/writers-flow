#!/usr/bin/env bash

wc=$(wc -w ../WritersWorkflow/WritersWorkflow.md | awk '{print $1}')

cat reference/number.md > tmpOutput.md
cat reference/header.md >> tmpOutput.md
cat ../WritersWorkflow/WritersWorkflow.md >> tmpOutput.md

sed -i -- "s/{{wc}}/$wc/g" tmpOutput.md

pandoc -s tmpOutput.md -o ../exports/Author-WritersWorkflow.docx --data-dir=reference/

cat reference/number.md > tmpOutput.md
cat ../WritersWorkflow/WritersWorkflow.md >> tmpOutput.md

sed -i -- "s/{{wc}}/$wc/g" tmpOutput.md
sed -i -- "s/## By J. Matthew Gottwig//g" tmpOutput.md

pandoc -s tmpOutput.md -o ../exports/Anon-WritersWorkflow.docx --data-dir=reference/

rm tmpOutput.*
