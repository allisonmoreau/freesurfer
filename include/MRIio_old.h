/* header file for MRI I/O */
/* 2/1/91 - AD */

#ifndef MRIIO_OLD_H
#define MRIIO_OLD_H

char *lmalloc(unsigned long size) ;
char *lcalloc(size_t nmemb,size_t size) ;
void buffer_to_image(unsigned char *buf,unsigned char**im,int ysize,int xsize);
void image_to_buffer(unsigned char **im,unsigned char*buf,int ysize,int xsize);
void file_name(char *fpref, char *fname, int num, char *form) ;


#endif

