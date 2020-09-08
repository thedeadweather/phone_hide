def hide_number(num)
  # находим все цифры
  num = num.scan(/\d/)
  gap = 1

  # заменяем три последние,
  # или все если их не более трех
  case num.size
  when 0..3
    num = 'x' * num.size
  else
    3.times { num.pop }
    num = num.join + "xxx"
  end

  # ставим пробел между цифрами по заданному формату
  while gap <= (num.length - 1)
    num.insert(gap, ' ')
    gap < 9 ? gap += 4 : gap += 3
  end

  # возвращаем строку с номером
  '+' + num
end

puts "Введите номер телефона"
puts hide_number(STDIN.gets.chomp)
