#!/usr/bin/env bash

TEMPLATE_FILE="${HOME}/template.j2"
INPUT_FILE="${HOME}/input"
OUTPUT_FILE="${HOME}/output"
FORMAT="${FORMAT:-yaml}"

$HOME/.local/bin/jinja2 --format "$FORMAT" "${TEMPLATE_FILE}" "${INPUT_FILE}" > "${OUTPUT_FILE}"