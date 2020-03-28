поиск элемента по значению.
Примечание: список, пожалуйста, придумайте не (list 1 2 3 4 5 6 7 8), а какие-то
более "случайные" значения, которые хотя бы не совпадают с их индексами
2 Чтение файла и вывод его содержимого (файл текстовый)
3 Сжатие/разжатие списка (см. примечания)

(defun Insert(N L)
    (cond((null L)(cons N NIL)) ;вставка в конец списка
         ((<= N (car L))(cons N L)); условие вставки
         (T (cons (car L) ;место вставки ищется дальше              
            (Insert N (cdr L) ) )) 
    )
) 
(defun Del(N L)
    (cond ((eq N 1) (cdr L))
          (T (cons (car L)
            (Del (- N 1) (cdr L)))))
)
(defun newFindL(N L position)
    (cond ((eq L nil) "No element")
          ((= N (car L)) position)
          (T (newFindL N (cdr L) (+ position 1)))
))

(Insert 5 '(1 3 8 10))
(Del 2 (list 1 3 8 10))
(newFindL 8 (list 1 3 8 10) 0)

