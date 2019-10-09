/******************************************************
 * Copyright Grégory Mounié 2018                      *
 * This code is distributed under the GLPv3+ licence. *
 * Ce code est distribué sous la licence GPLv3+.      *
 ******************************************************/

#include <assert.h>
#include "mem.h"
#include "mem_internals.h"

void *
emalloc_small(unsigned long size)
{
    if (arena.chunkpool != NULL){ 
        void * curr = arena.chunkpool;
        arena.chunkpool = *(void**)arena.chunkpool;
        void * adr = mark_memarea_and_get_user_ptr(curr,size,SMALL_KIND);
        return adr;
    }
    unsigned long taille = mem_realloc_small();
    unsigned int num = taille/CHUNKSIZE;
    int i ;
    void * tmp = arena.chunkpool;
    for (i=0;i<num;i++){
        *((void **)tmp) = (void*)((char*)tmp + CHUNKSIZE);
        tmp = *((void **)tmp);
    }
    *((void**)tmp) = NULL;
    return emalloc_small(size);
}

void efree_small(Alloc a) {
    *(void **)(a.ptr)= arena.chunkpool;
    arena.chunkpool = a.ptr;
}
