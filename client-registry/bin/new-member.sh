#!/usr/bin/env bash
set -e
id="$1"; name="$2"
mkdir -p members
cat > members/"$id".json <<EOF
{ "id": "$id", "type": "member", "member_name": "$name", "directory_issued_by": "believerscommon-root", "issue_date": "$(date -u +%FT%TZ)", "membership_tier":"Client", "status":"active" }
EOF
echo "Created members/$id.json"
