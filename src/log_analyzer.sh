echo "Введите путь к файлу относительно корневой директории"
read file_path
if [ ! -f "$file_path" ]; then
    echo "Файл не найден!"
fi

if [[ !"$file_path" == *".log" ]]; then
    total_number_of_records=$(wc -l < "$file_path" | sed -r 's/ //g')
    number_of_unique_files=$(awk '{print $1}'  "$file_path" | uniq |wc -l)
    number_of_changes=$(awk '{if($8 != "NULL") print $8}' "$file_path" | uniq |wc -l)
    echo "$total_number_of_records $number_of_unique_files $number_of_changes"
else
    echo "Ошибка"
fi


