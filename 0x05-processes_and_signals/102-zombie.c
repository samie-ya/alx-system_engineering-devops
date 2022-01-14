#include <sys/types.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>

/**
* infinite_while- infinitely looping while functions
*
* Return: Always 0.
*/

int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}

/**
* main- This function is used to craete zombie processes
*
* Return: Always 0
*/

int main(void)
{
	pid_t child;
	int i;

	for (i = 0; i < 5; i++)
	{
		child = fork();
		if (child > 0)
		{
			printf("Zombie process created, PID: %d\n", child);
			sleep(1);
		}
		else
			exit(0);
	}
	infinite_while();
	return (0);
}
