#include "stdio.h"
#include "device.h"
#include "rand.h"
#include "sched.h"
#include "mm.h"
#include "vm.h"

union task_union {
    struct task_struct task;
    char stack[PAGE_SIZE];
};


struct task_struct* current;
struct task_struct* task[NR_TASKS];

extern void __sret(void);

// in vm.c, the very first root page table...
extern pagetable_t kpgtbl; 

extern unsigned long long uphy_text_start;
extern unsigned long long uvirt_text_start;
extern unsigned long long user_stack; // virtual stack

#define SJF
#ifdef SJF
int task_init_done = 0;
void task_init(void) {
    puts("task init...\n");

    current = (struct task_struct*) alloc_page();
    current->state = TASK_RUNNING;
    current->counter = 0;
    current->priority = 5;
    current->blocked = 0;
    current->pid = 0;

    task[0] = current;
    task[0]->thread.sp = (unsigned long long) task[0] + TASK_SIZE;
    // lab5 new
    // initialize sepc and user stack
    task[0]->thread.sepc = (unsigned long long)0x0;
    task[0]->thread.sscratch = task[0]->thread.sp;

    // lab5 new
    // task[0]'s root page table is the initial page table...
    task[0]->mm.pgtbl = kpgtbl;

    /* set other 4 tasks */
    for (int i = 1; i <= LAB_TEST_NUM; ++i) {
        task[i] = (struct task_struct*) alloc_page();
        task[i]->state = TASK_RUNNING;
        task[i]->priority = 5; // All tasks initialized with the default priority (lowest)
        task[i]->counter = rand(); // 
        task[i]->blocked = PREEMPT_ENABLE;
        task[i]->thread.ra = (unsigned long long) & __sret;
        task[i]->thread.sp = (unsigned long long)task[i] + TASK_SIZE;
        
        // lab5 new
        // initialize sepc
        task[i]->thread.sepc = (unsigned long long)0x0;
        // initialize sscratch to user stack
        task[i]->thread.sscratch = user_stack + PAGE_SIZE;

        // lab5 new
        // create page table for each process
        task[i]->mm.pgtbl = VA2PA(alloc_page());  // root page table
        // manully copy the page...cuz I'm not sure whether
        // we have functions like memcpy()
        pagetable_t pgtbl = PA2VA(task[i]->mm.pgtbl);
        pagetable_t mpgtbl = PA2VA(kpgtbl);
        int len = PAGE_SIZE >> 3;
        for (int i = 0; i < len; i++) {
            *pgtbl = *mpgtbl;
            pgtbl += 1;
            mpgtbl += 1;
        }

        // lab5 new
        // map user program
        // kvmmap(pgtbl, uvirt_text_start, uphy_text_start, PAGE_SIZE << 2, (PTE_R | PTE_X));
        // map user stack
        // kvmmap(pgtbl, user_stack, VA2PA(alloc_page()), PAGE_SIZE, (PTE_R | PTE_W));

        task[i]->pid = i;
        printf("[PID = %d] Process Create Successfully! counter = %d\n", task[i]->pid, task[i]->counter);
    }
    task_init_done = 1;
}



void do_timer(void) {
    if (!task_init_done)return;
    #ifndef USER_MODE
    printf("[PID = %d] Context Calculation: counter = %d\n", current->pid, current->counter);
    #endif
    /* 当前进程的时间片减1 */
    (current->counter)--;
    /* 如果当前进程时间片已经使用完 则进行进程调度 */
    if ((current->counter) <= 0) {
        current->counter = 0;
        schedule();
    }
    return;
}



void schedule(void) {
    long cmin;
    unsigned char selector;
    unsigned char next;
    struct task_struct** ptr;

    while (1) {
        cmin = 0xFFFF;
        selector = NR_TASKS;
        ptr = &task[NR_TASKS];

        while (--selector) {
            if (!*--ptr || (*ptr)->counter == 0)
                continue;
            if ((*ptr)->state == TASK_RUNNING && (*ptr)->counter < cmin) {
                cmin = (*ptr)->counter;
                next = selector;
                // puti(next);
                // puti(cmin);
            }
        }

        if (cmin != 0xFFFF) {
            break;
        }
        else {
            // 如果task0～4都运行完毕，则重新生成新的不同运行时间长度的任务
            for (int i = 1; i <= LAB_TEST_NUM; ++i) {
                task[i]->counter = rand();
                #ifndef USER_MODE
                printf("[PID = %d] Reset counter = %d\n", i, task[i]->counter);
                #endif
            }
        }

    }

    #ifndef USER_MODE
    printf("[!] Switch from task %d [task struct: 0x%lx, sp: 0x%lx] to task %d [task struct: 0x%lx, sp: 0x%lx], prio: %d, counter: %d\n", 
        current->pid, (unsigned long)current, current->thread.sp,
        task[next]->pid, (unsigned long)task[next], task[next]->thread.sp,
        task[next]->priority, task[next]->counter);
    #endif
    #ifdef USER_MODE
    printf("[!] Switch from task %d [0x%lx] to task %d [0x%lx], prio: %d, counter: %d\n", 
        current->pid, (unsigned long)current,
        task[next]->pid, (unsigned long)task[next],
        task[next]->priority, task[next]->counter);
    #endif

    switch_to(task[next]);
}

#endif

#ifdef PRIORITY

int task_init_done = 0;
void task_init(void) {

    current = (struct task_struct*) alloc_page();
    current->state = TASK_RUNNING;
    current->counter = 0;
    current->priority = 5;
    current->blocked = 0;
    current->pid = 0;

    task[0] = current;
    task[0]->thread.sp = (unsigned long long) task[0] + TASK_SIZE;

    /* set other 4 tasks */
    for (int i = 1; i <= LAB_TEST_NUM; ++i) {
        task[i] = (struct task_struct*) alloc_page();
        task[i]->state = TASK_RUNNING;
        task[i]->priority = 5; //All tasks initialized with the default priority (lowest)
        task[i]->counter = 8 - i; // counter = 7, 6, 5, 4（分别对应 task[1-4]运行时长）
        task[i]->blocked = PREEMPT_ENABLE;
        task[i]->thread.ra = (unsigned long long) & __sret;
        task[i]->thread.sp = (unsigned long long)task[i] + TASK_SIZE;
        task[i]->pid = i;

        printf("[PID = %d] Process Create Successfully! counter = %d priority = %d\n", task[i]->pid, task[i]->counter, task[i]->priority);
    }
    task_init_done = 1;

}

void do_timer(void) {
    if (!task_init_done) return;
    /* 当前进程的时间片减1 */
    (current->counter)--;
    /* 如果当前进程时间片已经使用完，则从头运行该task */
    /* 当在do_timer中发现当前运行进程剩余运行时间为0（即当前进程运行结束）时，
       需重新为该进程分配其对应的运行时长。
       相当于重启当前进程（每个进程的运行时间长度和初始化的值一致）。
    */
    if ((current->counter) <= 0 && (current->pid) != 0) { // 排除task0，task0不参与后续的优先级调度
        current->counter = 8 - current->pid; // counter = 7, 6, 5, 4（分别对应 task[1-4]的运行时长）
    }
    /* 每次do_timer都进行一次抢占试优先级调度 */
    schedule();
    return;
}




void schedule(void) {
    long pmin;
    long cmin;
    unsigned char selector;
    unsigned char next;
    struct task_struct** ptr;

    while (1) {
        pmin = 5;
        cmin = 0xFFFF;
        next = 0;
        selector = NR_TASKS;
        ptr = &task[NR_TASKS];

        // 打印调度遍历所有进程之前，那一刻的所有进程状态
        // puts("current tasks' state: \n");
        // for(int i=1;i<=4;i++){
        //     puts("[PID = ");
        //     puti(task[i]->pid);
        //     puts("] counter = ");
        //     puti(task[i]->counter);
        //     puts(" priority = ");
        //     puti(task[i]->priority);
        //     puts("\n");
        // }

        while (--selector) {
            if (!*--ptr)
                continue;
            if ((*ptr)->state == TASK_RUNNING && (*ptr)->priority < pmin) {
                cmin = (*ptr)->counter;
                pmin = (*ptr)->priority;
                next = selector;
            }
            if ((*ptr)->state == TASK_RUNNING && (*ptr)->priority == pmin) {
                if ((*ptr)->counter < cmin) {
                    cmin = (*ptr)->counter;
                    next = selector;
                }
            }
        }

        if (next) break;

    }

    if ((current->pid) != next) {
        printf("[!] Switch from task %d [task struct: 0x%lx, sp: 0x%lx] to task %d [task struct: 0x%lx, sp: 0x%lx], prio: %d, counter: %d\n", 
        current->pid, (unsigned long)current, current->thread.sp,
        task[next]->pid, (unsigned long)task[next], task[next]->thread.sp,
        task[next]->priority, task[next]->counter);
    }
    // 动态调整task[1-4]的优先级
    for (int i = 1; i <= LAB_TEST_NUM; ++i) {
        task[i]->priority = rand();
    }

    puts("tasks' priority changed\n");
    for (int i = 1;i <= LAB_TEST_NUM;i++) {
        printf("[PID = %d] counter = %d priority = %d\n", task[i]->pid, task[i]->counter, task[i]->priority);
    }
    switch_to(task[next]);
}

#endif


void switch_to(struct task_struct* next) {
    if (current == next) return;

    struct task_struct* prev = current;
    current = next;

    __switch_to(prev, next);
}


void dead_loop(void)
{
    while (1) {}
}
