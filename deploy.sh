#!/bin/bash

mdbook build
rsync -r -v book/ seed@lunardao.net:/home/seed/mdwiki/book

