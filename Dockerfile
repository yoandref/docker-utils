FROM ubuntu
RUN apt update && apt install curl --yes
# workdir serve para criar um diretório que vamos utilizar quando entrar na imagem
WORKDIR /app 
# copy serve para copiar um arquivo para dentro da imagem, passamos o path/nome-arquivo e path-destino
COPY arquivo-teste.txt .
# igual ao copy mas é capaz de pegar arquivos remotos e páginas e salvar como arquivo na imagem
# também serve para pegar aquivos compactados e enviar eles de forma descompactada
ADD https://www.google.com pagina.html

