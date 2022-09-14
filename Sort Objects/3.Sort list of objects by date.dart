//@dart=2.9
class Customer {
  String name;
  int age;
  DateTime dateTime;

  Customer(this.name, [this.age, this.dateTime]);

  @override
  String toString() {
    return '{${this.name},${this.age},${this.dateTime}}';
  }
}

void main(List<String> args) {
  List<Customer> customers = [];
  customers.add(Customer('Jack', 23, DateTime.utc(2022, 12, 9)));
  customers.add(Customer('Adam', 19, DateTime.utc(2022, 5, 18)));
  customers.add(Customer('Katherin', 25, DateTime.utc(2023, 8, 1)));

  customers.sort((a, b) => a.dateTime.compareTo(b.dateTime));
  print(customers);
}


//////////// Approach 2: using Comparable abstract class


// class Customer extends Comparable {
//     String name;
//   int age;
//   DateTime createdAt;

//   Customer(this.name, this.age, this.createdAt);

//   @override
//   String toString() {
//     return '{ ${this.name}, ${this.createdAt} }';
//   }

//   // sort by Date
//   @override
//   int compareTo(other) {
//     return this.createdAt.compareTo(other.createdAt);
//   }
// }

// main() {
//  List<Customer> customers = [];
//   customers.add(Customer('Jack', 23, DateTime.utc(2022, 12, 9)));
//   customers.add(Customer('Adam', 27, DateTime.utc(2022, 5, 18)));
//   customers.add(Customer('Katherin', 25, DateTime.utc(2023, 8, 1)));

//   customers.sort();
//   print('Sort by Date: ' + customers.toString());
// }





