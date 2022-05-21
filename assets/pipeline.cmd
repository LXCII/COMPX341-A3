@ECHO OFF
npm install && npm run build && (
	cd ..
	git add . 
	git commit -m "COMPX341-22A-A3 Committing from CI/CD Pipeline"
	git push origin main
	cd assets
	npm run start
	call 
) || (
	echo There was an error in building the application.
)