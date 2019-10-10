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
        void * suiv = *(void **)(arena.chunkpool);
        void * adr = mark_memarea_and_get_user_ptr(arena.chunkpool,CHUNKSIZE,SMALL_KIND);
        arena.chunkpool = suiv;
        return adr;
    }
    unsigned long taille = mem_realloc_small();
    unsigned int num = taille/96;
    int i ;
    void * tmp = arena.chunkpool;
    for (i=0;i<num;i++){
        (*(void **)tmp) = (void*)((char*)tmp + 96);
        tmp = *(void **) tmp;
    }
    *(void**)tmp = NULL;
    return emalloc_small(size);
    return (void *)0;
}

void efree_small(Alloc a) {
    *(void **)(a.ptr)= arena.chunkpool;
    arena.chunkpool = a.ptr;
}
