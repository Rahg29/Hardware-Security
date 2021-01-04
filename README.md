# Hardware-Security
Mitigating SAT attack by integrating Anti-SAT block into a locked circuit

## Abstract
Logic locking is a technique that has been proposed
to protect outsourced IC designs from piracy and
counterfeiting by untrusted foundries. A locked IC gives
the correct functionality only when a correct key is provided.
However, it’s security is threatened by a new attack
called SAT attack, which can decipher the correct key of
most logic locking techniques within a few hours even
for a large number of keys. This attack iteratively solves
SAT formulas which progressively eliminate the incorrect
keys till the circuit unlocked. In this project, Anti-SAT
block [1] is used to enhance the security of existing logic
locking techniques against the SAT attack. The number
of SAT attack iterations to reveal the correct key in a
circuit comprising an Anti-SAT block is an exponential
function of the key-size therefore it makes the SAT attack
computationally infeasible.


## Steps for executing ST-VLSI project
1.	Take a bench file for any benchmark circuit, for example `c17.bench`.
2.	Encrypt this bench file with logic locking, named as `c17_lock.bench`.
3.	Now calculate the number of iterations after which we get the correct key combination for unlocking the circuit using `SAT solver tool`.
-	For this use `c17_lock.bench` file along with `c17.bench` file in SAT solver that will run on Ubuntu environment.
-	Command for the above described step is:

`$ ./sld ../benchmarks/rnd/ c17_lock.bench ../benchmarks/original/ c17.bench`

4.	Now add Anti-SAT block into `c17_lock.bench` file and save it as `c17_l_as.bench`.
5.	Now again calculate the number of iterations for `c17_l_as.bench` along with `c17.bench` by using the command given below.

`$ ./sld ../benchmarks/rnd/ c17_l_as.bench ../benchmarks/original/ c17.bench`

6.	After this compare results of step 3 and 5. If step 5 generates more number of iterations as compare to step 4, then effectiveness of Anti-SAT block in the circuit is verified.  
7.	Verilog Implementation:
•	Implement `c17.v`, `c17_lock.v` and `c17_anti.v` in Verilog on Xilinx Vivado. 
•	Compare the power consumption & LUTs for the different circuits.
