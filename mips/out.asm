
fib.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <main>:
#include <stdio.h>

int main (void)
{
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
  printf("%d", fib(6));
   4:	bf 06 00 00 00       	mov    $0x6,%edi
   9:	b8 00 00 00 00       	mov    $0x0,%eax
   e:	e8 00 00 00 00       	callq  13 <main+0x13>
  13:	89 c6                	mov    %eax,%esi
  15:	bf 00 00 00 00       	mov    $0x0,%edi
  1a:	b8 00 00 00 00       	mov    $0x0,%eax
  1f:	e8 00 00 00 00       	callq  24 <main+0x24>
}
  24:	5d                   	pop    %rbp
  25:	c3                   	retq

0000000000000026 <fib>:

int fib(int n)
{
  26:	55                   	push   %rbp
  27:	48 89 e5             	mov    %rsp,%rbp
  2a:	53                   	push   %rbx
  2b:	48 83 ec 18          	sub    $0x18,%rsp
  2f:	89 7d ec             	mov    %edi,-0x14(%rbp)
  if (n == 0)
  32:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
  36:	75 07                	jne    3f <fib+0x19>
    return 0;
  38:	b8 00 00 00 00       	mov    $0x0,%eax
  3d:	eb 2b                	jmp    6a <fib+0x44>
  else if (n == 1)
  3f:	83 7d ec 01          	cmpl   $0x1,-0x14(%rbp)
  43:	75 07                	jne    4c <fib+0x26>
    return 1;
  45:	b8 01 00 00 00       	mov    $0x1,%eax
  4a:	eb 1e                	jmp    6a <fib+0x44>
  else
    return fib(n-1)+fib(n-2);
  4c:	8b 45 ec             	mov    -0x14(%rbp),%eax
  4f:	83 e8 01             	sub    $0x1,%eax
  52:	89 c7                	mov    %eax,%edi
  54:	e8 00 00 00 00       	callq  59 <fib+0x33>
  59:	89 c3                	mov    %eax,%ebx
  5b:	8b 45 ec             	mov    -0x14(%rbp),%eax
  5e:	83 e8 02             	sub    $0x2,%eax
  61:	89 c7                	mov    %eax,%edi
  63:	e8 00 00 00 00       	callq  68 <fib+0x42>
  68:	01 d8                	add    %ebx,%eax
}
  6a:	48 83 c4 18          	add    $0x18,%rsp
  6e:	5b                   	pop    %rbx
  6f:	5d                   	pop    %rbp
  70:	c3                   	retq
