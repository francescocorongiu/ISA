#include<stdio.h>
#include<stdlib.h>

#define NT 5 /// number of coeffs
#define NB 9 /// number of bits
#define NO 8 /// order of the filter

const int b[NT]={-2, -4, 13, 68, 103}; /// b array

/// Perform fixed point filtering assming direct form I
///\param x is the new input sample
///\return the new output sample
int myfilter(int x)
{
    static int sx[NO]; /// x shift register
    static int first_run = 0; /// for cleaning shift registers
    int i; /// index
    int y; /// output sample

    /// clean the buffers
    if (first_run == 0)
    {
        first_run = 1;
        for (i=0; i<NO; i++)
            sx[i] = 0;
    }

    /// shift and insert new sample in x shift register
    for (i=NO; i>0; i--)
        sx[i] = sx[i-1];
    sx[0] = x;

    /// make the convolution
    /// Moving average part
    y = 0;

    // thanks to the even simmetry of the architecture, the multiplication number is halved
    for (i=1; i<NT; i++){
        /* for each cycle the terms are added in couple, then weighted and the product is shifted of 9 bits,
        before being added, in order to respect the fixed point format */
        y += ((sx[NT-1+i] + sx[NT-1-i]) * b[NT-1-i]) >> (NB-1);
    }
    //add the last weighted term
    y+= (sx[NT-1] * b[NT-1]) >> (NB-1);

    return y;
}

int main (int argc, char **argv)
{
    FILE *fp_in;
    FILE *fp_out;

    int x;
    int y;

    /// check the command line
    if (argc != 3)
    {
        printf("Use: %s <input_file> <output_file>\n", argv[0]);
        exit(1);
    }

    /// open files
    fp_in = fopen(argv[1], "r");
    if (fp_in == NULL)
    {
        printf("Error: cannot open %s\n", argv[1]);
        exit(2);
    }
    fp_out = fopen(argv[2], "w");

    /// get samples and apply filter
    fscanf(fp_in, "%d", &x);
    do{
        y = myfilter(x);
        fprintf(fp_out,"%d\n", y);
        fscanf(fp_in, "%d", &x);
    } while (!feof(fp_in));

    fclose(fp_in);
    fclose(fp_out);

    return 0;
}