#!/bin/bash
RECIPIENT="$1"
SUBJECT="$2"
BODY="$3"

# Construction correcte de l'email : en-tête Subject, ligne vide, puis corps
{
    echo "Subject: $SUBJECT"
    echo
    echo -e "$BODY"
} | msmtp "$RECIPIENT"
