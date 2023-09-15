
::
::
::

@echo OFF
set OPTION=%1

if %OPTION%. == start. (
	docker compose -f mongoDB.yml up -d
	exit /B
) else if %OPTION%. == stop. (
	docker compose -f mongoDB.yml down 
	exit /B
)
@echo.
@echo run [start^|stop] 