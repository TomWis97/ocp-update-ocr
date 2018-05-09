#!/usr/bin/env bash
imagestreams=$(oc get is -n openshift | cut -d ' ' -f 1 | tail -n +2)
for is in $imagestreams
do
	echo "Importing image: $is"
	oc import-image "$is" --all -n openshift
done	
