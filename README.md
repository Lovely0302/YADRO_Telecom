# HTTP Checker

## Описание
Проект представляет собой простой HTTP-скрипт, выполняющий проверку доступности указанного URL. Скрипт запускается внутри Docker-контейнера на базе Ubuntu.

## Структура проекта
```
YADRO_Telecom/
├── section1/
│   └── script.sh          # Bash-скрипт для проверки URL
├── section2/
│   └── Dockerfile         # Dockerfile для сборки образа
```

## Сборка и запуск контейнера

1. Перейдите в корневую директорию проекта:
   ```bash
   cd YADRO_Telecom
   ```

2. Соберите Docker-образ:
   ```bash
   docker build -t http-checker -f section2/Dockerfile .
   ```

3. Запустите контейнер:
   ```bash
   docker run --rm http-checker
   ```

## Требования

- Docker установлен и запущен на системе

## Примечание
Задание с использованием Ansible не выполнено. Все действия по сборке и запуску выполнены вручную.
