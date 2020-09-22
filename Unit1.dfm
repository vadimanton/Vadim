#include <vector.h>

#include <conio.h>

#include <iostream.h>

#include <vcl.h>

#include <algorith.h>

#pragma hdrstop

//---------------------------------------------------------------------------

class Overflow

{

private:

int num;

public:

Overflow() {}

Overflow(int n): num(n){ }

~Overflow()

{

}

Overflow Overflow::operator *(const Overflow &a1)

{ unsigned int length=400;

if((num * a1.num)>length) throw ("perepolnenie sverhy");

return Overflow(num * a1.num);

}

/*void Umnoj (int a1, int a2)

{ unsigned int length=32768;

if((a1*a2)>length) throw ("perepolnenie sverxy");

cout<<a1*a2<<endl;

} */

};

void Print(int value)

{

cout<<value<<endl;

}

#pragma argsused

int main(int argc, char* argv[])

{ int a1,a2;

Overflow a,b,c;

try {

cout<<"vvedite a i b";

cin>>a1>>a2;

a=a1;

b=a2;

c=a*b; }

catch (const char *error){cout<<error<<endl;}

getch();

return 0;

}

//---------------------------------------------------------------------------
