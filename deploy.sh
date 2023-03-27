#!/bin/bash

# SUMMARY.md pages which need .html removed
clean="
	mission
	investment-thesis
	lunardao-architecture
	fund-management
	portfolio-investment-club
	syndicate
	investment
	conclusion
    governance
    community
    squad
    voting
    minimum-retention
    ragequit
    grace-period
    guildkick
    committees
    stewards
    media
    research
    education
    sentinels
    governance-process
"

mdbook build

# Now we clean the sidebar links
find book -type f -name '*.html' | while read -r html_file; do
	for section in $clean; do
		sed -e "s,#${section}\.html,#${section},g" -i "$html_file"
	done
done


#rsync -r -v book/ seed@lunardao.net:/home/seed/mdwiki



