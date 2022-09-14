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

void main() {
  List customers = [];
  customers.add(Customer('funa', 9));
  customers.add(Customer('bucsacna', 190));
  customers.add(Customer('huascana', 109));
  customers.add(Customer('guasdana', 90));
  customers.add(Customer('guasdnaaaa', 109));

  customers.sort((a, b) => a.name.compareTo(b.name));
  print(customers.toString());
  customers.sort((a, b) => a.age.compareTo(b.age));
  print(customers);
}

// Approach 2: using Comparable abstract class

// class Customer extends Comparable {
//   int age;
//   String name;
//   Customer(this.name, this.age);

//   @override
//   String toString() {
//     return '{${this.name},${this.age}}';
//   }

//   @override
//   int compareTo(onether) {
//     return this.name.compareTo(onether.name);
//   }
// }

// void main() {
//   List custom = [];
//   custom.add(Customer('guna', 19));
//   custom.add(Customer('palani', 90));
//   custom.add(Customer('logesh', 26));
//   custom.add(Customer('anbu', 31));
//   custom.sort();
//   print(custom);
// }
