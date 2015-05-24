#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
#include <semaphore.h>

#define NUM_THREADS 4
#define NUM 20

int N=NUM;  // number of elements in array X
int X[NUM];
int gSum[NUM_THREADS];  // global storage for partial results
int exSum[NUM_THREADS]; // Step 2 exclusive prefix sum
sem_t sem1, sem2;

void *Summation (void *pArg){
	int tNum = *((int *) pArg);
	int start, end;
	int i;
	start = (N / NUM_THREADS) * tNum;
        end = (N / NUM_THREADS) * (tNum+1);
        if (tNum == (NUM_THREADS-1)) end = N;
	for(i = start+1; i < end; i++){
		X[i] += X[i-1]; 
	}
	gSum[tNum] = X[end-1];
        sem_post(&sem1);
	sem_wait(&sem2);
	for(i=start; i< end; i++){
		X[i] += exSum[tNum];
	}	
//	delete (int *)pArg;
}

// void *Summation (void *pArg)
// {
//   int tNum = *((int *) pArg);
//   int lSum = 0;
//   int start, end;
//   int i;

//   start = (N / NUM_THREADS) * tNum;
//   end = (N / NUM_THREADS) * (tNum+1);
//   if (tNum == (NUM_THREADS-1)) end = N;
//   for (i = start; i < end; i++)
//     lSum += X[i];
//   gSum[tNum] = lSum;
  // delete (int *)pArg;
 //}

void InitializeArray(int *S, int *N)
{
  int i;
  for (i = 0; i < NUM; i++){
    S[i] = i+1;
  }
}

int main(int argc, char* argv[])
{
  int j;
  pthread_t tHandles[NUM_THREADS];
  sem_init(&sem1,1,-1);
  sem_init(&sem2,1,-1);
  InitializeArray(X,&N);  // get values into A array; not shown
  
  double start = omp_get_wtime();
  for (j = 0; j < NUM_THREADS; j++) {
    int *threadNum = malloc(sizeof (int));
    *threadNum = j;
    pthread_create(&tHandles[j], NULL, Summation, (void *)threadNum);
  }
  for(j=0; j < NUM_THREADS; j++){
	sem_wait(&sem1);
  }
  exSum[0]=0;
  for(j = 1; j < NUM_THREADS; j++){
    exSum[j]=exSum[j-1]+gSum[j-1];
  }
  for(j = 0; j < NUM_THREADS; j++){
    sem_post(&sem2);
  }
  for (j = 0; j < NUM_THREADS; j++) {
    pthread_join(tHandles[j], NULL);
  }
  printf("Tempo: %f\n",omp_get_wtime()-start);
  printf("The sum of array elements is %d\n",X[NUM-1]);
  return 0;
}
