#include <err.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>

int main()
{
  int fd = socket(AF_INET, SOCK_RAW, IPPROTO_IGMP);

  int true = 1;
  setsockopt(fd, IPPROTO_IP, IP_ROUTER_ALERT, &true, sizeof(true));
}
