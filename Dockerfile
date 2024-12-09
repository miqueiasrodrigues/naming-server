# Usar a imagem base OpenJDK 17 para ARM64
FROM arm64v8/openjdk:17-jdk-slim

# Configurar o diretório de trabalho no container
WORKDIR /app

# Copiar o JAR compilado para o container
COPY target/naming-server-0.0.2-SNAPSHOT.jar app.jar

# Expor a porta que a aplicação irá rodar
EXPOSE 8762

# Definir o comando para rodar a aplicação
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
