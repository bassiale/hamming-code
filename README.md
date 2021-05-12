# hamming-code
apl code that creates hamming codes

# what are hamming codes?
In IT they are one of first forms of auto correcting codes. For example they were used in CDs, it is very likely that a cd gets damaged, but most of the times you can still access the content.

# how does it work? 
You have as an input a string of ones and zeros, then you decide to sacrifise some of your space to make sure that in case of damage nothing gets lost. In order to do so you have to enclose the vector in a bigger matix, so that you have some space for the controls. Then we have to divide this matrix in groups, so that we can count the parity of each group, and with the associated check bit with every group you can tweek it to be even.
