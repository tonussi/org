// C source code
/*
* ===========================================================================
*
*       Filename:  matrix_access.c
*
*    Description:  Program to show the difference between accessing a matrix
*    by rows and by columns
*
*        Version:  1.0
*        Created:  10/29/2014
*         Author:  Laercio Lima Pilla (laercio.pilla AT ufsc.br)
*       Revision:  none
*       Compiler:  gcc
*
* ===========================================================================
*/

#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <string.h>

//##########################################################
// Functions
//##########################################################
void usage();

//##########################################################
// Definitions
//##########################################################
#define COLUMNS         100
#define ROWS            100

#define INPUT_FAILURE   -1
#define OK              0

#ifndef TRUE
#define TRUE 1
#endif
#ifndef FALSE
#define FALSE 0
#endif

/***********************************************************/
int main (int argc, char *argv[]) {
  int *matrix;
  int rows = ROWS;
  int columns = COLUMNS;
  int byrow = TRUE;
  int debug = FALSE;
  int order = 0;

  int i,j,opt;

  //reads inputs from user
  argc--;
  argv++;
  while (argc >= 1){
    opt = 1;
    if (*argv[0] == '-'){
      if ((!strcmp(argv[0], "-h")) || (!strcmp(argv[0], "--help"))){
        usage();
        exit(OK);
      }
      else if ((!strcmp(argv[0], "-d")) || (!strcmp(argv[0], "--debug")))
      debug = TRUE;
      else if (!strcmp(argv[0], "-bycolumn"))
      byrow = FALSE;
      else if (!strcmp(argv[0], "-byrow"))
      byrow = TRUE;
      else {
        opt = 2;
        if (argc < 2) {
          usage();
          exit(INPUT_FAILURE);
        }
        else if ((!strcmp(argv[0], "-c")) || (!strcmp(argv[0], "--columns"))){
          columns = atoi(argv[1]);
          if(columns < 1){
            printf("Number of columns cannot be smaller than one. Input: %dn", columns);
            exit(INPUT_FAILURE);
          }
        }
        else if ((!strcmp(argv[0], "-r")) || (!strcmp(argv[0], "--rows"))){
          rows = atoi(argv[1]);
          if(rows < 1){
            printf("Number of rows cannot be smaller than one. Input: %dn", rows);
            exit(INPUT_FAILURE);
          }
        }
        else {
          usage();
          exit(INPUT_FAILURE);
        }
      }
    }
    argc -= opt;
    argv += opt;
  }

  assert(columns > 0 && rows > 0);

  // Matrix allocation
  matrix = malloc (sizeof(int)*columns*rows);
  assert(matrix != NULL);
  printf("Allocated data structure: matrix[%d][%d]n",rows,columns);

  printf("Memory access starts!n");
  // Sets values in the matrix
  if (byrow){
    for ( i=0 ; i<rows ; i++ ){
      for ( j=0; j<columns; j++ ){
        matrix[i*columns + j] = order;
        order++;
      }
    }
  } else {
    for ( j=0; j<columns; j++ ){
      for ( i=0 ; i<rows ; i++ ){
        matrix[i*columns + j] = order;
        order++;
      }
    }
  }
  if(debug){
    printf("Order that matrix cells were accessedn");
    for ( i=0 ; i<rows ; i++ ){
      for ( j=0; j<columns; j++ ){
        printf("matrix[%d][%d] = %dn",i,j,matrix[i*columns+j]);
      }
    }
  }
  printf("Memory access ends!n");

  /**Frees data structures**/
  free(matrix);

  return 0;
}

/***********************************************************/
void usage(){
  printf("Usage optionsn");
  printf("  -h --help            Prints this messagen");
  printf("  -d --debug           Prints debug informationn");
  printf("  -c --columns         Sets the number of columns of the matrix (default value = %d)n",COLUMNS);
  printf("  -r --rows            Sets the number of rows of the matrix (default value = %d)n",ROWS);
  printf("  -bycolumn            Accesses the matrix by columnn");
  printf("  -byrow               Accesses the matrix by row (default)n");
  printf("n");
}
