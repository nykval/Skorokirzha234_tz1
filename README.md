<h2>Решения:</h2>
<h3><a href="TZ1/tz1.sh">Техническое задание №1</a></h3>

<h2>Техническое задание №1</h2>

<h3>Задание</h3>
Вам нужно написать скрипт на bash, который на вход принимает два параметра - две директории (входная директория и выходная директория). Во входной директории могут находиться как файлы, так и вложенные директории (внутри которых тоже могут быть как файлы, так и папки) - уровень вложенности может быть любой. Задача скрипта - "обойти" входную директорию и скопировать все файлы из нее (и из всех сложенных директорий) в выходную директорию - но уже без иерархии, а просто все файлы - внутри выходной директории.

<h3>Запуск скрипта</h3>
Для запуска скрипта:
<ul>
        <li>Перейдите в в папку TZ1 <code>cd TZ1</code></li>
        <li>Запустите скрипт командой <code>/bin/bash ~/Skorokirzha234_tz1/TZ1/tz1.sh .dir1 dir2</code> (подставьте путь до директорий, которые хотите использовать вместо <code>input_dir</code> и <code>output_dir</code>)</li>
  <li>Если в целевой директории обнаруживаются файлы или папки, к которым у текущего пользователя нет прав доступа, следует либо использовать команду sudo для повышения привилегий, либо зайти под учетной записью, обладающей нужными правами. В случае выполнения скрипта без достаточных прав, он предупредит о недоступности некоторых файлов и скопирует те, к которым доступ разрешен, оставляя недоступные без изменений.
</ul>

<h3>Требования и критерии оценки</h3>
За задание вы можете получить максимум 10 баллов.


Семинарист при проверке может выставить за какой-либо пункт частичный балл, если требования пункта выполнены не полностью.
<ul>
<li><b>1 балл</b> Скрипт запускается и принимает два параметра - <b>выполнено в 3 строке в if</b></li>
<li><b>1 балл</b> Реализовано получение списка файлов, находящихся непосредственно во входной директории (не во вложенных в нее директориях) - выполнено в 23 строке при рекурсивном обходе директории</li>
<li><b>1 балл</b> Реализовано получение списка директорий, находящихся во входной директории - выполнено в 23 строке </li>
<li><b>3 балла</b> Реализовано получение списка всех файлов, вложенных во входную директорию - выполнено в 23 строке</li>
<li><b>1 балла</b> Реализовано копирование всех файлов, вложенных во входную директорию в выходную директорию - выполнено в 47 строке в cp</li>
<li><b>3 балла</b> Решена проблема с файлами, имеющими одинаковое название - реализовано добавление счетчика в конце названия</li>
</ul>

<b>Примечане: также учтен случай отсутсвия входной или выходной директории</b>
