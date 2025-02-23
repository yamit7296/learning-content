/*

Def: 
    ProtoType - Ofter there was a scenario where we don't wants to create entire object from scratch, 
                instead we create copy from template and update the few attribute.

    Registry - It's a extension of ProtoType. Registry hold the map value of prototype


Use: ProtoType -  Adding student to same batch, where batch can have many common attribute, excel or word templates
     Registry - store Protype in hasmap

Steps
    # ProtoType #
    0. create interface which clone method using generic
    1. create copy constructor inside the class where you copy common attributes
    2. create clone method where you call copy contructor
    3. Update the unique attributes

    # Registry #
    1. create a registry call and initiate the hasmap in contructor
    2. create add method in it which will add prototype
    3. create get method to get prototype object

    Note: Typescript doesn't support multiple constuctors

*/

interface IProtoType<T> {
    clone(): T;
}

class Employee implements IProtoType<Employee>{
    private name: string;
    private empID: number;
    private company: string;
    private department: string;
    private role: string;

    constructor(company: string, department: string, role: string) {
        this.company = company;
        this.department = department;
        this.role = role;
    }

    setName(name:string) {
        this.name = name;
    }

    setEmpID(empID: number) {
        this.empID = empID;
    }

    copyEmployee(emp: Employee): Employee {
        emp.company = this.company;
        emp.department = this.company;
        emp.role = this.role;
        emp.name = '';
        emp.empID = 0;
        return emp;
    }

    clone(): Employee {
        return this.copyEmployee(Object.create(this));
    }
}

const emp = new Employee('Credilio', 'IT', 'Engineer');

const amit = emp.clone();
amit.setEmpID(331);
amit.setName('Amit Yadav')

const shubham = emp.clone();
shubham.setEmpID(332);
shubham.setName('Shubham Yadav')

console.log({emp, amit, shubham});
