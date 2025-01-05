FROM wordpress:latest

ARG USER
ARG UID

WORKDIR /var/www/html

COPY wordpress/ .

# Criando usuário com as mesmas característcas do usuário host
RUN if [ "$USER" != "root" ]; then echo "Creating $USER" && \
    useradd -G www-data,root -u $UID -d /home/$USER $USER && \ 
    mkdir -p /home/$USER/.compose && \
    chown -R $USER:$USER /home/$USER;fi;


# Ajusta permissões da pasta de armazenamento e cache para o Laravel funcionar corretamente
RUN chown -R $USER:$USER /var/www/html 
USER $USER
