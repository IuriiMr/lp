#include <linux/module.h> /* Needed by all modules */ 
#include <linux/printk.h> /* Needed for pr_info() */ 
#include <linux/init.h> /* Needed for the macros */ 

int init_hello(void);
void cleanup_hello(void);

int init_hello(void) 
{ 
    pr_info("Hello world !\n"); 
    return 0; 
} 

void cleanup_hello(void) 
{ 
    pr_info("Cleaning up module.\n"); 
} 

module_init(init_hello);
module_exit(cleanup_hello);

MODULE_LICENSE("GPL");
