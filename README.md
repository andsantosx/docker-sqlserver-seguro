# SQL Server Seguro

Este projeto cria uma imagem SQL Server que já nasce com o banco de dados e as tabelas criadas.

### Como executar com Docker Compose

Para subir os dois bancos (SQL Server e MongoDB) simultaneamente:

1. Iniciar os serviços:
```bash
docker compose up -d
```

2. Remover os containers após o uso:
```bash
docker compose down
```

### Como executar (Docker individual)

1. Build da imagem:
```bash
docker build -t sqlserver-seguro .
```

2. Executar container:
```bash
docker run -d -p 1433:1433 --name sql-seguro sqlserver-seguro
```

### Resultado
Ao iniciar o container, o banco seguro já estará disponível com todas as tabelas (cliente, carro, apolice, sinistro) e dados inseridos, sem necessidade de comandos adicionais.
