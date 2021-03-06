#!/usr/bin/env zsh

cd $0:A:h:h

if [[ -z $NETLIFY_KEY ]]; then
    echo "Deploy token not set. Please export \$NETLIFY_KEY."
    exit 1
fi

function deploy {
    curl -H "Content-Type: application/zip" \
         -H "Authorization: Bearer $NETLIFY_KEY" \
         --data-binary @public.zip \
         https://api.netlify.com/api/v1/sites/accountant-richard-62827.netlify.com/deploys
}

echo "Deploying SimpleMath to Netlify!"

if (( $+commands[jq] )); then
    deploy | jq
else
    deploy
fi

echo "Finished deploy! Check it out: https://simplemath.io"