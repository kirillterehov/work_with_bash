# работа с bash

1. Создал файл src/history_of_vim.txt со свежими данными о Vim, используя Vim. Добавил сведения о изменениях файла в журнал src/files.log в формате: путь к файлу — размер файла в байтах — дата и время — sha-сумма файла — алгоритм вычисления sha.

2. Разработал скрипт src/edit.sh для замены подстрок в текстовых файлах. На вход он должен принимать путь до файла (относительно корневой директории репозитория), строку для замены и саму замену (в виде строки). Информация о каждом изменении файла заносится в журнал src/files.log в формате, описанном в пункте 1.

3. Разработал скрипт src/log_analyzer.sh для анализа файла лога. На вход он принимает путь до файла (относительно корневой директории), в stdout выдает 3 числа: общее количество записей, количество уникальных файлов и количество изменений, приведших к изменению hash файла. Предусмотрена обработка некорректных или отсутствующих файлов.
