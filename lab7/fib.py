def fibonacci(arg):
    if arg == 0:
        return 0
    elif arg == 1:
        return 1
    return fibonacci(arg - 1) + fibonacci(arg - 2)

print ('fibonacci de 0 em hexa =>', hex(fibonacci(0)))
print ('fibonacci de 1 em hexa =>', hex(fibonacci(1)))
print ('fibonacci de 2 em hexa =>', hex(fibonacci(2)))
print ('fibonacci de 3 em hexa =>', hex(fibonacci(3)))
print ('fibonacci de 4 em hexa =>', hex(fibonacci(4)))
print ('fibonacci de 5 em hexa =>', hex(fibonacci(5)))
print ('fibonacci de 6 em hexa =>', hex(fibonacci(6)))
print ('fibonacci de 7 em hexa =>', hex(fibonacci(7)))
print ('fibonacci de 8 em hexa =>', hex(fibonacci(8)))
print ('fibonacci de 9 em hexa =>', hex(fibonacci(9)))

print ('fibonacci de 0 em decimal =>', fibonacci(0))
print ('fibonacci de 1 em decimal =>', fibonacci(1))
print ('fibonacci de 2 em decimal =>', fibonacci(2))
print ('fibonacci de 3 em decimal =>', fibonacci(3))
print ('fibonacci de 4 em decimal =>', fibonacci(4))
print ('fibonacci de 5 em decimal =>', fibonacci(5))
print ('fibonacci de 6 em decimal =>', fibonacci(6))
print ('fibonacci de 7 em decimal =>', fibonacci(7))
print ('fibonacci de 8 em decimal =>', fibonacci(8))
print ('fibonacci de 9 em decimal =>', fibonacci(9))
