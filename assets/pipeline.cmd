@ECHO OFF
if not "%~1"=="" goto :main
echo Error: Missing argument. Please provide a commit message.
exit /B 1

:main
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