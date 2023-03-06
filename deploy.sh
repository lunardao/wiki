#!/bin/bash

# SUMMARY.md pages which need .html removed
clean="
	dao#abstract
	dao#mission
	dao#investment-thesis
	dao#lunardao-architecture
	dao#fund-management
	dao#portfolio-investment-club
	dao#syndicate
	dao#investment
	dao#conclusion
	dao#resources--references
    dao#governance
    dao#community
    dao#squad
    dao#voting
    dao#minimum-retention
    dao#ragequit
    dao#grace-period
    dao#guildkick
    dao#committees
    dao#stewards
    dao#media
    dao#research
    dao#education
    dao#sentinels
    dao#governance-process
"

mdbook build

# Now we clean the sidebar links
find book -type f -name '*.html' | while read -r html_file; do
	for section in $clean; do
		sed -e "s,#${section}\.html,#${section},g" -i "$html_file"
	done
done

#rsync -r -v book/ seed@lunardao.net:/home/seed/mdwiki



