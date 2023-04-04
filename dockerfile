FROM mcr.microsoft.com/dotnet/sdk:7.0 as build-env

WORKDIR /App

COPY DotNet.Docker.csproj ./

RUN dotnet restore DotNet.Docker.csproj

COPY . .

RUN dotnet publish -c Release -o /publish

FROM mcr.microsoft.com/dotnet/aspnet:7.0 as runtime

WORKDIR /publish

COPY --from=build-env /publish .

EXPOSE 80

ENTRYPOINT [ "dotnet", "DotNet.Docker.dll" ]

