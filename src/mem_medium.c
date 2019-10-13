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

void *
emalloc_medium_aux(unsigned long initial_size,unsigned long size)
{
    //on calcule l'indince de la TZL
    unsigned int size_puiss2 = puiss2(size);
    // printf("arena.TZL[7] :%p\n*arena.TZL[7] : %p",arena.TZL[size_puiss2],arena.TZL[size_puiss2]);
    unsigned long *list_free_blocks = (unsigned long *)arena.TZL[size_puiss2];
    //si on dépasse la taille max on réalloc et on découpe récursivement
    if (size_puiss2 > (FIRST_ALLOC_MEDIUM_EXPOSANT + arena.medium_next_exponant))
    {
        mem_realloc_medium();
        return emalloc_medium_aux(initial_size,size/2);
    }

    //sinon on découpe récursivement un bloc plus gros
    if (list_free_blocks == 0x0UL)
    {
        return emalloc_medium_aux(initial_size,size * 2);
    }
    //si un bloc est disponible on le marque et on renvoie l'adresse user
    else {
      unsigned long *middle_free_block=list_free_blocks;
      while (size!=initial_size){
        middle_free_block +=(size / 2);
        arena.TZL[size_puiss2-1] = middle_free_block;
        size/=2;
      }

      return mark_memarea_and_get_user_ptr(middle_free_block,size,MEDIUM_KIND);
    }
    return (void *)0;

}

void *emalloc_medium(unsigned long size){
  assert(size < LARGEALLOC);
  assert(size > SMALLALLOC);
  // mem_realloc_medium();
  unsigned long initial_size=size;
  return emalloc_medium_aux(initial_size,size);
}

void efree_medium(Alloc a)
{
    unsigned long *adresse_buddy = (unsigned long*)((unsigned long)a.ptr ^ a.size);
    if ((unsigned long*)arena.TZL[a.size]!=adresse_buddy){
      arena.TZL[a.size]=adresse_buddy;
    }
    else{
      arena.TZL[a.size]=NULL;
      //recommencer avec bloc fusionné et la liste de l'indice suivant ???
    }
}
