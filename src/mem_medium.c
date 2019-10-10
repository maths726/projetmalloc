/******************************************************
 * Copyright Grégory Mounié 2018                      *
 * This code is distributed under the GLPv3+ licence. *
 * Ce code est distribué sous la licence GPLv3+.      *
 ******************************************************/

#include <stdint.h>
#include <assert.h>
#include "mem.h"
#include "mem_internals.h"

unsigned int puiss2(unsigned long size)
{
    unsigned int p = 0;
    size = size - 1; // allocation start in 0
    while (size)
    { // get the largest bit
        p++;
        size >>= 1;
    }
    if (size > (1 << p))
        p++;
    return p;
}

void *emalloc_medium_aux(unsigned long size, int *counter)
{
    unsigned long size_puiss2 = puiss2(size);
    unsigned long *list_free_blocks = arena.TZL[size_puiss2];
    if (list_free_blocks > (FIRST_ALLOC_MEDIUM_EXPOSANT + arena.medium_next_exponant))
    {
        mem_realloc_medium();
    }
    if (*list_free_blocks == NULL)
    {
        *counter++;
        return emalloc_medium_aux(size * 2, &counter);
    }
    for (unsigned int i = 0; i < *counter; i++)
    {
        unsigned long *middle_free_block = *list_free_blocks + size / 2;
        arena.TZL[size_puiss2 - i] = middle_free_block;
    }

    return (void *)0;
}

void *
emalloc_medium(unsigned long size)
{
    assert(size < LARGEALLOC);
    assert(size > SMALLALLOC);
    int *counter;
    *counter = 0;
    return emalloc_medium_aux(size, counter);
}

void efree_medium(Alloc a)
{
    void *adresse_buddy = a.ptr ^ a.size;
}
