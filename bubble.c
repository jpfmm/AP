/* File:    bubble.c
 *
 * Purpose: Use bubble sort to sort a list of ints.
 *
 * Compile: gcc -g -Wall -o bubble bubble.c
 * Usage:   bubble <n> <g|i>
 *             n:   number of elements in list
 *            'g':  generate list using a random number generator
 *            'i':  user input list
 *
 * Input:   list (optional)
 * Output:  sorted list
 *
 * IPP:     Section 3.7.1 (pp. 127 and ff.) and Section 5.6.1 
 *          (pp. 232 and ff.)
 */
#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <semaphore.h>

/* For random list, 0 <= keys < RMAX */
const int MAX_THREADS = 1024;
const int RMAX = 100;
int thread_count;
int listsize;

int *a;
sem_t *semaf;

void Usage(char* prog_name);
void Get_args(int argc, char* argv[], int* n_p, char* g_i_p, int* proc);
void Generate_list();
void Print_list(char* title);
void Read_list();
//void Bubble_sort(int a[], int n);
void *PBubble_Sort(void* rank);

/*-----------------------------------------------------------------*/
int main(int argc, char* argv[]) {
   long thread;
   pthread_t* thread_handles;

   int  n,procs;
   char g_i;

   Get_args(argc, argv, &n, &g_i, &procs);
   thread_count = procs;
   a = (int*) malloc(n*sizeof(int));
   semaf = (sem_t*) malloc (2*thread_count*sizeof(sem_t));
   thread_handles = (pthread_t*) malloc (thread_count*sizeof(pthread_t));
   listsize = n;

   for(thread = 0; thread < 2*thread_count; thread++){
      sem_init(&semaf[thread],1,1);
   }

   if (g_i == 'g') {
      Generate_list();
      Print_list("Before sort");
   } else {
      Read_list(a, n);
   }

   for(thread = 0; thread < thread_count; thread++){
	pthread_create(&thread_handles[thread],(pthread_attr_t*) NULL, PBubble_Sort, (void*) thread);
   }
   for(thread = 0; thread < thread_count; thread++){
	pthread_join(thread_handles[thread],NULL);
   }
   listsize = n;
   Print_list("After sort");

   free(thread_handles);
   free(a);
   return 0;
}  /* main */


/*-----------------------------------------------------------------
 * Function:  Usage
 * Purpose:   Summary of how to run program
 */
void Usage(char* prog_name) {
   fprintf(stderr, "usage:   %s <n> <g|i> <procs>\n", prog_name);
   fprintf(stderr, "   n:   number of elements in list\n");
   fprintf(stderr, "  'g':  generate list using a random number generator\n");
   fprintf(stderr, "  'i':  user input list\n");
   fprintf(stderr, " procs: number of threads\n");
}  /* Usage */


/*-----------------------------------------------------------------
 * Function:  Get_args
 * Purpose:   Get and check command line arguments
 * In args:   argc, argv
 * Out args:  n_p, g_i_p
 */
void Get_args(int argc, char* argv[], int* n_p, char* g_i_p, int* procs) {
   if (argc != 4 ) {
      Usage(argv[0]);
      exit(0);
   }
   *n_p = atoi(argv[1]);
   *g_i_p = argv[2][0];
   *procs = atoi(argv[3]);

   if (*n_p <= 0 || (*g_i_p != 'g' && *g_i_p != 'i') ) {
      Usage(argv[0]);
      exit(0);
   }
}  /* Get_args */


/*-----------------------------------------------------------------
 * Function:  Generate_list
 * Purpose:   Use random number generator to generate list elements
 * In args:   n
 * Out args:  a
 */
void Generate_list() {
   int i;

   srandom(0);
   for (i = 0; i < listsize; i++)
      a[i] = random() % RMAX;
}  /* Generate_list */


/*-----------------------------------------------------------------
 * Function:  Print_list
 * Purpose:   Print the elements in the list
 * In args:   a, n
 */
void Print_list(char* title) {
   int i;

   printf("%s:\n", title);
   for (i = 0; i < listsize; i++)
      printf("%d ", a[i]);
   printf("\n\n");
}  /* Print_list */


/*-----------------------------------------------------------------
 * Function:  Read_list
 * Purpose:   Read elements of list from stdin
 * In args:   n
 * Out args:  a
 */
void Read_list() {
   int i;

   printf("Please enter the elements of the list\n");
   for (i = 0; i < listsize; i++)
      scanf("%d", &a[i]);
}  /* Read_list */


void *PBubble_Sort(void* rank) {
	long my_rank = (long) rank;
	int i,actlock = 0;
	int temp;
	int blocksize = listsize / (2*thread_count);

	while(listsize >= 2){
	    for(i = 0; i < listsize-1; i++){
		if(blocksize!=0){
		 if(i % blocksize == 0 && actlock!=(2*thread_count-1)){
		    //printf("Thread %ld a espera do lock %d; i=%d\n",my_rank,actlock,i);
		    sem_wait(&semaf[actlock]);	
		    //printf("Thread %ld entrou no lock %d; i=%d\n",my_rank,actlock,i);
                 }
	        }
		 if(a[i] > a[i+1]){
		    temp = a[i];
		    a[i] = a[i+1];
		    a[i+1] = temp;
		 }
                if(blocksize!=0){
		 if(((i+1) % blocksize == 0 && actlock!=(2*thread_count-1)) || i >= listsize-2){
		    sem_post(&semaf[actlock]);
		    //printf("Thread %ld libertou bloco %d; i=%d\n",my_rank,actlock,i);
		    actlock++;
		 }
		}
	    }
	    listsize--;
	    //printf("listsize decrementado, novo valor = %d\n",listsize);
	    blocksize = listsize / (2*thread_count);
	    //printf("Determinou block size, %d\n",blocksize);
	    actlock=0;
	}
	return NULL;
}



/*-----------------------------------------------------------------
 * Function:     Bubble_sort
 * Purpose:      Sort list using bubble sort
 * In args:      n
 * In/out args:  a
 *
void Bubble_sort(
      int  a[]  * in/out *, 
      int  n    * in     *) {
   int list_length, i, temp;

   for (list_length = n; list_length >= 2; list_length--)
      for (i = 0; i < list_length-1; i++)
         if (a[i] > a[i+1]) {
            temp = a[i];
            a[i] = a[i+1];
            a[i+1] = temp;
         }

}  * Bubble_sort */

