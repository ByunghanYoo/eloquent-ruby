
# hash의 요소에 접근

hey_its_ordered = { b: 'mama', a: 'papa', c: 'baby' }
hey_its_ordered.each { |entry| p entry }

p hey_its_ordered[:a]

hey_its_ordered[:d] = 'grandma'
hey_its_ordered.each { |entry| p entry }

