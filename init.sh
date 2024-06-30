#!/bin/bash
if [ ! -f .env ]; then
	cp -v files/.env.example .env
fi
if [ ! -f ./secrets/WEBPASSWORD.secret ]; then
	touch ./secrets/WEBPASSWORD.secret
fi