#!/bin/sh

# Initialize blog if root folder is empty
if [ -z "$(ls)" ]; then
	hexo init ./
	yarn add hexo-deployer-git --save
fi

# Populate arguments based on environment variables
hexo clean
hexo g
hexo s
