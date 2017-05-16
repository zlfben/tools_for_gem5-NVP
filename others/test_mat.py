import scipy.io as sio

x = [1.1, 2.2, 3.3]
y = [1, 2, 3]

sio.savemat('data.mat', {'x': x, 'y': y})