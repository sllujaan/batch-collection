@echo off

set /p prefix=Enter Postfix: 

:: loop throught all the files in the current directory
for %%f in (*) do (
	if NOT "%%~xf" == ".bat" (
		rename "%%f" "%%~nf%prefix%%%~xf"
		echo %%f
	)
)

:FOR_END

:: all done
echo.
echo.
echo.
pause