#include <err.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>

int main()
{
int fd = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);

struct sockaddr_in addr = { 0 };
addr.sin_family = AF_INET;
addr.sin_port = htons(42000);
addr.sin_addr.s_addr = htonl(INADDR_ANY);
bind(fd, (struct sockaddr *) &addr, sizeof(addr));

struct ip_mr mr = { 0 };
inet_aton("224.42.0.1", &mr.imr_multiaddr);
setsockopt(fd, IPPROTO_IP, IP_ADD_MEMBERSHIP, &mr, sizeof(mr));
}
