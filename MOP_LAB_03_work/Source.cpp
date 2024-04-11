#include <iostream>
#include <string>

extern "C" int __stdcall Merge1(int*, int, int*, int, int*);
extern "C" int __fastcall Merge2(int*, int*, int, int, int*);
extern "C" int __cdecl Merge3(int*, int, int*, int, int*);

using namespace std;

int main() {

    int array1[] = { 1,3,5,7,9 };
    int array2[] = { 2,4,6,8,10 };
    const int size1 = sizeof(array1) / sizeof(array1[0]);
    const int size2 = sizeof(array2) / sizeof(array2[0]);
    const int size3 = size1 + size2;
    int* array3 = new int[size3];
    int* array4 = new int[size3];
    int* array5 = new int[size3];


    cout << "stdcall :" << endl;
    Merge1(array1, size1, array2, size2, array3);
    cout << "Array1: ";
    for (int i = 0; i < size1; ++i) {
        cout << array1[i] << " ";
    }
    cout << "\nArray2: ";
    for (int i = 0; i < size2; ++i) {
        cout << array2[i] << " ";
    }
    cout << "\nArray3: ";
    for (int i = 0; i < size3; ++i) {
        cout << array3[i] << " ";
    }
    cout << "\n\n\n";

    cout << "fastcall :" << endl;
    Merge2(array1, array2, size1, size2, array4);
    cout << "Array1: ";
    for (int i = 0; i < size1; ++i) {
        cout << array1[i] << " ";
    }
    cout << "\nArray2: ";
    for (int i = 0; i < size2; ++i) {
        cout << array2[i] << " ";
    }
    cout << "\nArray3: ";
    for (int i = 0; i < size3; ++i) {
        cout << array4[i] << " ";
    }
    cout << "\n\n\n";

    cout << "cdecl :" << endl;
    Merge3(array1, size1, array2, size2, array5);
    cout << "Array1: ";
    for (int i = 0; i < size1; ++i) {
        cout << array1[i] << " ";
    }
    cout << "\nArray2: ";
    for (int i = 0; i < size2; ++i) {
        cout << array2[i] << " ";
    }
    cout << "\nArray3: ";
    for (int i = 0; i < size3; ++i) {
        cout << array5[i] << " ";
    }
    cout << "\n\n\n";

    delete[] array3;
    delete[] array4;
    delete[] array5;

    return 0;

}
