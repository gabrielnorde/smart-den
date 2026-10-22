#!/bin/bash
publisher_jar=publisher.jar
input_cache_path=./input-cache/
publisher_home="${FHIR_PUBLISHER_HOME:-$HOME/.fhir/tools/publisher}"
echo Checking internet connection...
if curl -sSf tx.fhir.org > /dev/null; then
	echo "Online"
	txoption=()
else
	echo "Offline"
	txoption=(-tx n/a)
fi

echo "${txoption[*]}"

export JAVA_TOOL_OPTIONS="$JAVA_TOOL_OPTIONS -Dfile.encoding=UTF-8"

publisher="${input_cache_path}${publisher_jar}"
if test -f "$publisher"; then
	rm -f temp/pages/_includes/StructureDefinition-*-validation.xhtml
	java -jar "$publisher" -ig . "${txoption[@]}" "$@"
publisher_status=$?

else
	publisher="../${publisher_jar}"
	if test -f "$publisher"; then
		rm -f temp/pages/_includes/StructureDefinition-*-validation.xhtml
		java -jar "$publisher" -ig . "${txoption[@]}" "$@"
publisher_status=$?
	else
		publisher="${publisher_home}/${publisher_jar}"
		if test -f "$publisher"; then
			rm -f temp/pages/_includes/StructureDefinition-*-validation.xhtml
			java -jar "$publisher" -ig . "${txoption[@]}" "$@"
publisher_status=$?
		else
			echo IG Publisher NOT FOUND in input-cache, parent folder, or FHIR publisher home.  Please run _updatePublisher.  Aborting...
			exit 1
		fi
	fi
fi

node scripts/validate-crmi.js --root "$PWD"
crmi_status=$?
if [ "$publisher_status" -ne 0 ]; then
	exit "$publisher_status"
fi
exit "$crmi_status"
