import re
import scipy.io as sio

file_name = 'a.out'
f = open(file_name)
lines = f.readlines()
f.close()

regex_eh = re.compile(r'\b(?P<time>\d+)\b.*Energy \b(?P<value>[0-9\.]+)\b is harvested')
regex_er = re.compile(r'\b(?P<time>\d+)\b.*remained:\s(?P<value>-?[0-9\.]+)\b')
regex_pf = re.compile(r'\b(?P<time>\d+)\b:.*Tick')

time_eh = [int(regex_eh.search(line).group('time')) for line in lines if regex_eh.search(line)]
value_eh = [float(regex_eh.search(line).group('value')) for line in lines if regex_eh.search(line)]
time_er = [int(regex_er.search(line).group('time')) for line in lines if regex_er.search(line)]
value_er = [float(regex_er.search(line).group('value')) for line in lines if regex_er.search(line)]
time_pf = [int(regex_pf.search(line).group('time')) for line in lines if regex_pf.search(line)]
value_pf = range(len(time_pf))

data = sio.savemat('data.mat', {'time_eh': time_eh, 'value_eh': value_eh, 'time_er': time_er, 
								'value_er': value_er, 'time_pf': time_pf, 'value_pf': value_pf})