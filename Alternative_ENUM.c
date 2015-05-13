#include "ENUM.h"
#include "math.h"
#include <iostream>
#include <stdio.h>

double *cT, *y;
int *u, *uT, *d, *delta, *v;

void initENUM(){
    int dimesion = dim+1;
    //Alocate memory for every vector
    cT = (double*)_mm_malloc(dimesion * sizeof(double), 64);
	muT = (double*)_mm_malloc((dim*dim) * sizeof(double), 64);
    y =  (double*)_mm_malloc(dimesion * sizeof(double), 64);
    v =     (int*)_mm_malloc(dimesion * sizeof(int), 64);
    delta = (int*)_mm_malloc(dimesion * sizeof(int), 64);
    d =     (int*)_mm_malloc(dimesion * sizeof(int), 64);
    u =     (int*)_mm_malloc(dimesion * sizeof(int), 64);
    uT =    (int*)_mm_malloc(dimesion * sizeof(int), 64);
}

void transposeMU(){
    int i,j;
    
    for(i=1; i<dim; i++)
        for(j=0; j<i; j++)
            memcpy(&muT[j*dim+i], &mu[i][j], sizeof(double));
}

//ENUM accordingly C. P. Schnorr && M. Euchner
int* ENUM(int ini, int fim){
    double cL, aux;
    int s = ini, t = ini, i;
    int window = fim-ini+1;
    
    transposeMU();
    //Init all vectors
	cL = B[ini];
	d[ini] = u[ini] = uT[ini] = 1;
	y[ini] = delta[ini] = v[ini] = 0;

	for(i = ini + 1; i <= fim+1; i++){
		cT[i] = u[i] = uT[i] = y[i] = delta[i] = v[i] = 0;
		d[i] = 1;
    }
    
    cT[t] = cT[t + 1] + (y[t]*y[t] + 2*uT[t]*y[t] + uT[t]*uT[t]) * B[t];
    int incicle=1;
	//While t <= fim
	while(incicle == 1){
		if(t>fim){incicle=0;}
		else{
			if(cT[t]<cL && t<=ini){
				//UpdateVector
				cL = cT[ini];
				memcpy(&u[ini], &uT[ini], window*sizeof(int));
			}
			else{
				if (cT[t]>=cL){
					//moveDown
					t++;
					s = (s<t)?t:s; //Get max value
					if(t < s){
						delta[t] = -delta[t];
					}
					if(delta[t]*d[t] >= 0){
						delta[t] += d[t];
					}
					uT[t] = v[t] + delta[t];
				}
				else {
					//moveUP
					t--;
					aux = 0;
					int offset = t*dim;
					//#pragma ivdep
					for (i = t + 1; i <= s; i++){
						aux += uT[i] * muT[offset+i];
					}
					y[t] = aux;
					uT[t] = v[t] = int(round(-aux));
					delta[t] = 0;
					if (uT[t] > -aux){
						d[t] = -1;
					}
					else{
						d[t] = 1;
					}
				}
				//Prepare cT[t] to next iteration
				cT[t] = cT[t + 1] + (y[t]*y[t] + 2*uT[t]*y[t] + uT[t]*uT[t]) * B[t];
			}
		}
	}
	return u;
}