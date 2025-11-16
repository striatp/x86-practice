#!/usr/bin/env pwsh

param ()

if (-not (Test-Path -Path (Join-Path $PWD bin\program.exe))) {
    Write-Host "[ERROR] " -NoNewline -ForegroundColor Red ;
    Write-Host "There is no compiled program to execute." ;
    exit 1 ;
}

function Execute {
    [CmdletBinding()]
    [OutputType([System.Void])]
    param ()

    & (Join-Path $PWD bin\program.exe) ;
}

Execute ;
