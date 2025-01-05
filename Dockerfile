FROM wordpress:latest

ARG USER_UID
ARG UID

WORKDIR /var/www/html

COPY wordpress/ .

# Criando usuário com as mesmas característcas do usuário host
RUN if [ "$USER_UID" != "root" ]; then echo "Creating $USER_UID" && \
    useradd -G www-data,root -u $UID -d /home/$USER_UID $USER_UID && \ 
    mkdir -p /home/$USER_UID/.compose && \
    chown -R $USER_UID:$USER_UID /home/$USER_UID;fi;


# Ajusta permissões da pasta de armazenamento e cache para o Laravel funcionar corretamente
RUN chown -R $USER_UID:$USER_UID /var/www/html 
USER $USER_UID
