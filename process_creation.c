#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>

int main() {
    pid_t pid = fork();

    if (pid == 0) {
        // Child process
        printf("This is the child process. PID: %d, Parent PID: %d\n", getpid(), getppid());
    } else if (pid > 0) {
        // Parent process
        printf("This is the parent process. PID: %d, Child PID: %d\n", getpid(), pid);
    } else {
        // Fork failed
        perror("Fork failed");
        return 1;
    }

    return 0;
}
