// @dart=2.9

class Customer {
  String name;
  int age;

  Customer(this.name, this.age);

  @override
  String toString() {
    return '{${this.name},${this.age}}';
  }
}
void main(List<String> args) {
  List customers = [];
  customers.add(Customer('funa', 9));
  customers.add(Customer('bucsacna', 190));
  customers.add(Customer('huascana', 109));
  customers.add(Customer('guasdana', 90));
  customers.add(Customer('guasdnaaaa', 109));

  customers.sort((a, b) => b.name.compareTo(a.name));
  print(customers);
  customers.sort((a, b) => b.age-a.age);
  print(customers);
}

////////// Approach 2: using Comparable abstract class

// class Person extends Comparable {
//   String name;
//   int age;

//   Person(this.name, this.age) {}
//   @override
//   String toString() {
//     return ('{ Hey My Name is${this.name}, and My age is${this.age}}');
//   }

//   @override
//   int compareTo(onther) {
//     return this.name.compareTo(onther.name);
//   }
// }


// void main(List<String> args) {
//   List persons = [];

//  persons.add(Person('Jack', 23));
//  persons.add(Person('Adam', 27));
//   persons.add(Person('Katherin', 25));
//   persons.sortReversed();      //// only dart projects 
//  customers.reversed.toList(); ///// only dart projects 

//   print(persons);
// }


