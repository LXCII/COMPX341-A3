@ECHO OFF
set msg=%1
npm install && npm run build && (
	cd ..
	git add . 
	git commit -m %msg%
	git push origin main
	cd assets
	npm run start
	call 
) || (
	echo There was an error in building the application.
)