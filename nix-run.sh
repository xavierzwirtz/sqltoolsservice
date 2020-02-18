#!/usr/bin/env nix-shell
#! nix-shell -i bash
(
    cd src/Microsoft.SqlTools.ServiceLayer/
    dotnet run dotnet-sql-client.csproj -- --help
)