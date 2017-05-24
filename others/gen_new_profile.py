from sys import argv

script, t = argv
t = float(t)

f_original = open('profile/energy_prof')
f_newfile = open('profile/new_file', 'w')

lines = f_original.readlines()

for line in lines:
	item = float(line) * t
	f_newfile.write(str(item) + '\n')

f_original.close()
f_newfile.close()
