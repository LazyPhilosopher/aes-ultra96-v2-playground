##########################################################################
#    Copyright 2019 Xilinx
# 
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
# 
#      http://www.apache.org/licenses/LICENSE-2.0
# 
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.
# 
##########################################################################
#
# 4/4/2019 - Rajeev Patwari
#
# N-Body simulations
# Software to simulate N-body interactions based on Newtonian Gravity 
# calculations. The system is confined to point mass bodies with some 
# limitations
# This simulation is inspiration to design FPGA accelerator
# Testcase#1 shows why FPGA parallel acceleration is required!
# 
# References:
#   1. http://cc.doc.ic.ac.uk/projects/prj_axel/nbody.html
#   
# SW installations: Anaconda with Python 3.7 from here
#    https://www.anaconda.com/distribution/
#
##########################################################################

import numpy as np
import matplotlib.pyplot as plt
import matplotlib.animation as animation
import mpl_toolkits.mplot3d.axes3d as p3
import random
import math

# ----------- configure before run - begin
# select a test case between 1 and 10
# uncomment one of the following
#testcase = 1  # n=500; very slow on pc - this is why we need accelerator!
testcase = 2  # n=2
#testcase = 3  # n=12
#testcase = 4  # n=3
#testcase = 5  # n=500; very slow on PC
#testcase = 6  # n=500; very slow on PC
#testcase = 7  # n=500; very slow on PC
# ----------- configure before run - end


# Fixing random state for reproducibility
random.seed(19680801)

# initialize particle positions, mass and initial velocity
graphlim = 4000
numparticles = 500
timestep = np.float(100)

if testcase==1:
    x      = list(np.random.uniform(-3000,3000,numparticles))
    y      = list(np.random.uniform(-3000,3000,numparticles))
    z      = list(np.random.uniform(-3000,3000,numparticles))
    mass   = list(np.random.uniform(100,110,numparticles))
    vx     = list(np.random.uniform(0,0,numparticles ))
    vy     = list(np.random.uniform(0,0,numparticles ))
    vz     = list(np.random.uniform(0,0,numparticles ))
    mass[0] = 100
    sf = 4000.0

elif testcase==2:
    x      = [300, -300]
    y      = [0,0]
    z      = [0,0]
    mass   = [295, 300]
    vx     = [-0.1,0]
    vy     = [0.1,0]
    vz     = [0,0]
    sf = 600.0
    numparticles = 2

elif testcase==3:
    numparticles = 12
    x      = [100, 100, -100,-100, 100, 100, -100,-100, 100, 100, -100,-100]
    y      = [100, -100, 100, -100,100, -100, 100, -100, 100, -100, 100, -100]
    z      = [0,  0, 0, 0, 100,  100, 100, 100, -100,-100, -100, -100]
    mass   = [0.5 for i in range(0,numparticles,1)]
    vx     = [0.0 for i in range(0,numparticles,1)]
    vy     = [0.0 for i in range(0,numparticles,1)]
    vz     = [0.0 for i in range(0,numparticles,1)]
    sf = 200.0
    
elif testcase==4: # 2 planets trying to orbit a star
    numparticles = 3
    x      = [0, 0, 10]
    y      = [0, 25, 10]
    z      = [0,  0, 0 ]
    mass   = [10, 10, 5]
    vx     = [0.0, 0.0, 0.0]
    vy     = [0.0, 0.0, 0.0 ]
    vz     = [0.0, 0.0, 0.0]
    sf = 2
    graphlim = 800
    timestep = np.float(1)

elif testcase==5:
    lim = 3000.0/2
    x      = list(lim*np.random.random_sample((numparticles,)))
    y      = list(lim*np.random.random_sample((numparticles,)))
    z      = list(lim*np.random.random_sample((numparticles,)))
    mass   = list(3000*np.random.random_sample((numparticles,)))
    vx     = list(np.random.uniform(-1,1,numparticles ))
    vy     = list(np.random.uniform(-1,1,numparticles ))
    vz     = list(np.random.uniform(-1,1,numparticles ))
    mass[0] = 100
    sf = 4000.0
    graphlim = 8000
	
elif testcase==6:
    radius, h_max, v_max = 1000, 1280, 720
    theta = np.linspace(0, 2*np.pi, numparticles)
    a, b = 1 * np.cos(theta), 1 * np.sin(theta)
    r = np.random.rand((numparticles))
    x, y = radius*r * np.cos(theta), radius*r * np.sin(theta)
    x = [int(i+640) for i in x]
    y = [int(i+360) for i in y]
    mass = [random.randint(10, 110) for i in range(0, numparticles)]  
    z = [0 for i in range(0, numparticles)] 
    #x[0], y[0], mass[0] = 640, 360, 10000
    vx = [0 for i in range(0, numparticles)] 
    vy = [0 for i in range(0, numparticles)] 
    vz = [0 for i in range(0, numparticles)] 
    sf = 300.0
    timestep = np.float(5)
    graphlim = 1500
    
else:
    print ("Chose between 1 to 6 and re-run")	
	
	
# Create new Figure with black background
fig = plt.figure()
ax = p3.Axes3D(fig)

# Add a subplot with no frame, set limits
ax.set_xlim3d(-graphlim, graphlim)
ax.set_ylim3d(-graphlim, graphlim)
ax.set_zlim3d(-graphlim, graphlim)
ax.set_xlabel('X Label')
ax.set_ylabel('Y Label')
ax.set_zlabel('Z Label')
print(len(x), len(y), len(z), len(vx), len(vy), len(vz), len(mass))

def update(*args):
    """ can be parameerized if needed """
	
    global x,y,vx,vy,mass,numparticles, sf
    accx = [0.0 for i in range(0, numparticles)]
    accy = [0.0 for i in range(0, numparticles)]
    accz = [0.0 for i in range(0, numparticles)]
    for i in range(0, numparticles, 1):
        for j in range(0, numparticles, 1):
            if (j!=i):
                rx = x[j] - x[i]
                ry = y[j] - y[i]
                rz = z[j] - z[i]
                dd = np.power(rx,2) + np.power(ry,2) + np.power(rz,2) + sf*sf
                #print(np.power(dd,3))
                d = 1/np.sqrt(np.power(dd,3))
                s = mass[j]*d
                accx[i] += rx*s 
                accy[i] += ry*s 
                accz[i] += rz*s 
        
        #print(accx[0], x[0]) 
        x[i] += vx[i]*timestep
        y[i] += vy[i]*timestep
        z[i] += vz[i]*timestep
        vx[i] += accx[i]*timestep
        vy[i] += accy[i]*timestep
        vz[i] += accz[i]*timestep
    ax.clear()  
    ax.scatter(x,y,z,'.')
    ax.set_xlim3d(-graphlim, graphlim)
    ax.set_ylim3d(-graphlim, graphlim)
    ax.set_zlim3d(-graphlim, graphlim)
    ax.set_xlabel('X Label')
    ax.set_ylabel('Y Label')
    ax.set_zlabel('Z Label')
    return 
	
# Construct the animation, using the update function as the animation director.
anim = animation.FuncAnimation(fig, update, interval=10)
plt.show()
anim.save('nbody_pc_sim1.html')

#with np.errstate(over='ignore'):
                
