num1 = 1000
num2 = 2000
total = 3000000
amp = 1000

name = 'energy_prof'

def func(x, num1, num2):
	x = x % (num1 + num2)
	if x < num1:
		return 1
	else:
		return 0

t = range(total)
y = [amp * func(ti, num1, num2) for ti in t]

f = open(name, 'w')
for yi in y:
	f.write(str(yi) + '\n')
f.close()