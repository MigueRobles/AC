#include <stdlib.h>
#include <stdio.h>

#ifdef _OPENMP
	#include <omp.h>
#else
	#define omp_get_thread_num() 0
	#define omp_get_num_threads() 1
#endif

int main(int argc, char** argv){
	int i, j;
	double t1, t2, t3;

	if (argc<2){
		printf("Falta tamaño de matriz y vector\n");
		exit(-1);
	}

	unsigned int N = atoi(argv[1]);

	double *v1, *v2, **M;
	v1 = (double*) malloc(N*sizeof(double));
	v2 = (double*) malloc(N*sizeof(double));
	M = (double**) malloc(N*sizeof(double *));
	if ( (v1==NULL) || (v2==NULL) || (M==NULL) ){
		printf("Error en la reserva de espacio para los vectores\n");
		exit(-2);
	}

	for (i=0; i<N; i++){
		M[i] = (double*) malloc(N*sizeof(double));
		if ( M[i]==NULL ){
			printf("Error en la reserva de espacio para los vectores\n");
			exit(-2);
		}
  }
	for (i=0; i<N;i++){
		v1[i] = i;
		v2[i] = 0;
		#pragma omp parallel for
		for(j=0;j<N;j++)
			M[i][j] = i+j;
	}

	t1 = omp_get_wtime();

	for (i=0; i<N;i++){
		#pragma omp parallel
		{
			double tmp = 0;
			#pragma omp for
			for(j=0;j<N;j++)
			{

				tmp += M[i][j] * v1[j];
			}

			#pragma omp critical
			v2[i] += tmp;
		}
	}

	t2 = omp_get_wtime();

	t3 = t2 - t1;

	printf("Tiempo(seg.):%11.9f\t / Tamaño:%u\t/ V2[0]=%8.6f V2[%d]=%8.6f\n", t3,N,v2[0],N-1,v2[N-1]);

	if (N<20)
		for (i=0; i<N;i++)
			printf(" V2[%d]=%5.2f\n", i, v2[i]);


	free(v1);
	free(v2);
	for (i=0; i<N; i++)
		free(M[i]);
	free(M);

	return 0;
}
