
#include <iostream>

using namespace std;
class vect

{ private:

int* p;

int size;

public:

vect() { size = 11; p = new int[size]; }

vect(int n);

~vect() { delete [] p; }

int& element(int i);

int ub() const { return (size - 1); }

};

vect::vect(int n)

{ if(n < 1) // оговоренное предусловие

throw (n); // устанавливается исключение

p = new int[n];

if(p == 0) // оговоренное постусловие

throw ("FREE STORE EXHAUSTED"); // устанавливается

// исключение

}

int& vect::element(int n)

{ if(n < 0 || n > size-1)

throw ("ILLEGAL NUMBER OF ELEMENT");

// устанавливается исключение

return (p[n]);

}
void g(int n)

{ try {

// блок try - контекст для принятия решения о том, какие

// обработчики вызываются для установленного исключения

vect a(n);

}

catch (int n) // обработчик

{

cerr « "SIZE ERROR " « n « endl;

g(10);

}

catch (const char* error) // обработчик

{

cerr « error « endl;

abort();

}

}
int main()

{

extern void g(int n);

g(-1);
return 0;
}
