;2 Чтение файла и вывод его содержимого (файл текстовый)
(defun readF(path)
    (setf str (open path :direction :input :if-does-not-exist :error))
    (do ((line (read-line str nil 'eof)
            (read-line str nil 'eof)))
        ((eql line 'eof))
        (format t "~a~%" line)
    )
)
(readF "test.txt")