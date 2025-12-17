    @echo on
    REM clear existing project, download rivt-install, create new venv
    REM set rivt folder
    SET rvfolder=rivt-doc2
    REM go to home directory
    cd %HOMEPATH%
    REM double check deactivation for dev purposes
    uv deactivate
    REM double check that old project is deleted
    rmdir /s /q %rvfolder%
    REM clean cache for dev purposes
    uv cache clean
    REM set up venv
    mkdir %rvfolder%
    REM change directory
    cd %rvfolder%
    REM make venv
    uv venv
    REM activate venv
    call .venv/scripts/activate
    REM install rivt from GitHub
    uv pip install git+https://github.com/rivtlib-dev/rivtlib
    REM download example project into new folder
    mkdir example2
    cd example2
    curl https://raw.githubusercontent.com/rivt-info/rivt-single-doc/refs/heads/main/rv0000-single-doc.py -O
    curl https://raw.githubusercontent.com/rivt-info/rivt-single-doc/refs/heads/main/s-beam1-v.csv -O
    curl https://raw.githubusercontent.com/rivt-info/rivt-single-doc/refs/heads/main/s-sectprop.py -O
    curl https://github.com/rivt-info/rivt-single-doc/blob/main/s-beam.png?raw=true -O -L
    REM run example with (no quotes )"python rv0000-single-doc.py"
    cmd /k
