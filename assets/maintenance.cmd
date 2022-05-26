@ECHO OFF
for /R %%f in (*.ts) do (
	(echo //Kathleen Requilman 1504947) > %%f.temp
	type %%f >> %%f.temp
	move /y %%f.temp %%f
)

