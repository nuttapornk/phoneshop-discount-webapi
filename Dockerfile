FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS base
WORKDIR /app
EXPOSE 80

FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /src
COPY ["src/PhoneShop.Discount.WebApi/PhoneShop.Discount.WebApi.csproj", "PhoneShop.Discount.WebApi/"]

COPY . .
WORKDIR /src
RUN dotnet build "src/PhoneShop.Discount.WebApi/PhoneShop.Discount.WebApi.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "src/PhoneShop.Discount.WebApi/PhoneShop.Discount.WebApi.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "PhoneShop.Discount.WebApi.dll"]