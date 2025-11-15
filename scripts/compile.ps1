#!/usr/bin/env pwsh

param (
    [Parameter(Mandatory = $true)]
    [System.String] $Source
)

if (-not $Source) {
    Write-Host "[ERROR] " -NoNewline -ForegroundColor Red ;
    Write-Host "A source file must be specified for compilation to occur." ;
}

if (-not (Test-Path -Path $Source)) {
    Write-Host "[ERROR] " -NoNewline -ForegroundColor Red ;
    Write-Host "The specified file does not exist." ;
}

function Compile {
    [CmdletBinding()]
    [OutputType([System.Void])]
    param (
        [Parameter(Mandatory = $true)]
        [string] $Source
    )

    nasm -f win64 $Source -o .\bin\program.obj && gcc -nostartfiles .\bin\program.obj -o .\bin\program.exe && .\bin\program.exe | Out-Null

    Write-Host "Compiled" ;
}

Compile -Source $Source
