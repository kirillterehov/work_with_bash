read -p "введите имя файла" file_path
if [ -f "$file_path" ]; then
    read -p "Введите строку, которую надо поменять" old_string
    if grep "$old_string" "$file_path"; then
        read -p "Введите строку, на которую надо поменять" new_string
        sed -i '' "s/$old_string/$new_string/g" "$file_path"
        if [ $? -eq 0 ]; then
            size=$(ls -la "$file_path" | awk '{print $5}')
            time_data=$(date "+%F %H:%M")
            summa_sha=$(shasum -a 256 "$file_path" | awk '{print $1}')
            echo "$file_path - $size - $time_data - $summa_sha - "sha256"" >> "./files.log"
        else
            echo "Замена строки не удалась!"
        fi
    else
        echo "Строка не обнаружена"
    fi
else
    echo "Файл не найден!"
fi
