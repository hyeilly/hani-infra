FILE_NAME=/var/www/{PROJECT_NAME}/.env.production

if [-f "$FILE_NAME"]; then
  rm -rf $FILE_NAME

touch $FILE_NAME
echo NEXT_PUBLIC_API_ENDPOINT=${API_ENDPOINT} >> $FILE_NAME