# Set-Up de configuração eclipse mosquitto

Esse template tem como objetivo deixar a configuração do container eclipse-mosquitto automatiza

`require Docker Compose version v2.24.2`

Dessa forma o deploy e tesde de integração devem funcinar no ci do github.

### Para configurar user e password

Edite o arquivo `./mosquitto/passwd` o conteúdo do arquivo deve ser `user:password`;

Ex: `deploy:deploy12345`

### Para configurar os demais parametros

Edite o arquivo `./mosquitto.conf`

### Atenção

A configuração `password_file /mosquitto/config/passwd_file` não deve ser configurada nesso momento, isso será feito pelo script `build`;

### build

build da imagem e configuração é feito por um script shell.

```bash
sudo rm mosquitto/mosquitto.conf
cp mosquitto.conf mosquitto/mosquitto.conf

```

Esse trexo é onde as configurações são passadas para o volume do docker.

Para rodar a imagem pasba `./build`
