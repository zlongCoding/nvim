#!/bin/sh

# workdir=$(cd $(dirname $0); pwd)

# targetFile= "$workdir/go.mod"

targetFileType=""



if [ -f "./.vimspector.json" ]; then
  exit 1
fi

if [ -f "./go.mod" ]; then
  targetFileType="go"
elif [ -f "./package.json" ]; then
  targetFileType="js"
fi
 
if [ $targetFileType ]; then
  cp /Users/longzhang/.config/nvim/lua/spector/vimspector/templates/${targetFileType}.vimspector.json .vimspector.json
fi
