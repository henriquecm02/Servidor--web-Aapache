
# Provisionamento de Servidor Web Apache

Este repositório contém um script Bash para automatizar o provisionamento de um servidor web Apache em um sistema Linux. O script instala o Apache, configura o serviço para iniciar automaticamente e cria uma página de teste, garantindo que o servidor Apache esteja funcionando corretamente.

## Pré-requisitos

Antes de executar o script, certifique-se de ter:
- Um servidor Linux com Ubuntu ou similar.
- Acesso root ou privilégios de `sudo` no sistema.
- Conexão à internet para instalação de pacotes.

## Descrição do Script

O script realiza as seguintes ações:
1. **Atualiza os pacotes do sistema** com `apt update` e `apt upgrade`.
2. **Instala o Apache** com o comando `apt install apache2`.
3. **Inicia o Apache** e garante que o serviço seja iniciado automaticamente no boot com `systemctl`.
4. **Cria uma página HTML de teste** para confirmar que o Apache está funcionando corretamente.

## Como Usar

### Passo 1: Baixe o script
Clone o repositório ou baixe o arquivo `provisionar_apache.sh` diretamente.

```bash
git clone https://github.com/SEUNOME/servidor-web-apache.git
cd servidor-web-apache


### Passo 2: Torne o script executável
Antes de executar o script, torne-o executável com o seguinte comando:

```bash
chmod +x provisionar_apache.sh
```

### Passo 3: Execute o script
Execute o script com privilégios de `sudo` para garantir que o Apache seja instalado corretamente:

```bash
sudo ./provisionar_apache.sh
```

### Passo 4: Verifique o servidor
Após a execução do script, você pode acessar o servidor Apache a partir do navegador, usando o IP do servidor, ou verificar a página de teste com o seguinte comando:

```bash
curl http://localhost
```

Se o Apache estiver funcionando corretamente, você verá a página com a mensagem "Apache está funcionando corretamente!".

## Contribuições

Se você tiver sugestões ou melhorias para este projeto, sinta-se à vontade para abrir uma issue ou enviar um pull request.

## Licença

Este projeto é licenciado sob a Licença MIT - veja o arquivo [LICENSE](LICENSE) para mais detalhes.
```
