#!/bin/sh

# Initialize blog if root folder is empty
if [ -z "$(ls)" ]; then
	hexo init ./
	#cp /home/hexo/.docker/package.json /home/hexo/.hexo/package.json
	npm install hexo-deployer-git --save
	npm install hexo-admin --save
	npm install minimatch@"3.0.2"  
        npm update -d
fi

# Populate arguments based on environment variables
hexo cl
hexo g
hexo s
