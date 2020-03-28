;;Удаление элемента
(defun newFindL(N L)
    (loop
    for element in L
    and pos from 0
    when (eql element N)
    collect pos)
)
(newFindL 8 (list 1 3 8 10))