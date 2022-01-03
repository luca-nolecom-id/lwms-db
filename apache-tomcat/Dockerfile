FROM tomcat:8.5-jre8

ENV BACKUP_FOLDER /opt/lwms/backup

RUN mkdir -p "$BACKUP_FOLDER" && \
  chmod 755 "$BACKUP_FOLDER" && \
  touch "$BACKUP_FOLDER/backup.log" && \
  chmod 766 "$BACKUP_FOLDER/backup.log"
