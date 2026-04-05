# SQL Server Seguro 🐳

Este projeto cria uma imagem SQL Server que já nasce com o banco de dados e as tabelas criadas.

### 🚀 Como executar

1. **Build da imagem:**
```bash
docker build -t sqlserver-seguro .
```

2. **Executar container:**
```bash
docker run -d -p 1433:1433 --name sql-seguro sqlserver-seguro
```

### ✅ Resultado
Ao iniciar o container, o banco **seguro** já estará disponível com todas as tabelas (`cliente`, `carro`, `apolice`, `sinistro`) e dados inseridos, sem necessidade de comandos adicionais.
