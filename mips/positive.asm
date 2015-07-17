positive.o: file format elf64-x86-64

Disassembly of section .text:

0000000000000000 <main>:
#include <stdio.h>

int main(void)
{
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
  printf("\n%d\n", positive(4, -9));
   4:	be f7 ff ff ff       	mov    $0xfffffff7,%esi
   9:	bf 04 00 00 00       	mov    $0x4,%edi
   e:	b8 00 00 00 00       	mov    $0x0,%eax
  13:	e8 00 00 00 00       	callq  18 <main+0x18>
  18:	89 c6                	mov    %eax,%esi
  1a:	bf 00 00 00 00       	mov    $0x0,%edi
  1f:	b8 00 00 00 00       	mov    $0x0,%eax
  24:	e8 00 00 00 00       	callq  29 <main+0x29>
}
  29:	5d                   	pop    %rbp
  2a:	c3                   	retq

000000000000002b <positive>:

int positive(int a, int b)
{
  2b:	55                   	push   %rbp
  2c:	48 89 e5             	mov    %rsp,%rbp
  2f:	48 83 ec 10          	sub    $0x10,%rsp
  33:	89 7d fc             	mov    %edi,-0x4(%rbp)
  36:	89 75 f8             	mov    %esi,-0x8(%rbp)
  if (addit(a, b) > 0)
  39:	8b 55 f8             	mov    -0x8(%rbp),%edx
  3c:	8b 45 fc             	mov    -0x4(%rbp),%eax
  3f:	89 d6                	mov    %edx,%esi
  41:	89 c7                	mov    %eax,%edi
  43:	b8 00 00 00 00       	mov    $0x0,%eax
  48:	e8 00 00 00 00       	callq  4d <positive+0x22>
  4d:	85 c0                	test   %eax,%eax
  4f:	7e 07                	jle    58 <positive+0x2d>
  {
    return 1;
  51:	b8 01 00 00 00       	mov    $0x1,%eax
  56:	eb 05                	jmp    5d <positive+0x32>
  } else {
    return 0;
  58:	b8 00 00 00 00       	mov    $0x0,%eax
  }
}
  5d:	c9                   	leaveq
  5e:	c3                   	retq

000000000000005f <addit>:

int addit(int a, int b)
{
  5f:	55                   	push   %rbp
  60:	48 89 e5             	mov    %rsp,%rbp
  63:	89 7d fc             	mov    %edi,-0x4(%rbp)
  66:	89 75 f8             	mov    %esi,-0x8(%rbp)
  return a + b;
  69:	8b 45 f8             	mov    -0x8(%rbp),%eax
  6c:	8b 55 fc             	mov    -0x4(%rbp),%edx
  6f:	01 d0                	add    %edx,%eax
}
  71:	5d                   	pop    %rbp
  72:	c3                   	retq
