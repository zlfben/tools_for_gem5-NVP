from sys import argv
import re

script, prefix = argv

regex = re.compile(r'\bsim_seconds\b.*\s(?P<value>[0-9\.]+)\s')

lat_list = range(100, 1100, 100)

folder = prefix + '/'
ss = '['
for lat in lat_list:
	file_name = folder + str(lat) + '.txt'
	f = open(file_name);
	for line in f:
		if regex.search(line):
			value = regex.search(line).group('value')
			ss = ss + str(value) + ' '
			break
	f.close()
	ss = ss + ' '
ss = ss + ']'

print ss
