#!/usr/bin/env nix-shell
#! nix-shell -i bash
(
    cd src/Microsoft.SqlTools.ServiceLayer/
    dotnet build -r linux-x64
    dotnet bin/Debug/netcoreapp3.1/linux-x64/MicrosoftSqlToolsServiceLayer.dll
)