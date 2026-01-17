/*

Def: Let you contruct complex object step by step. 
    This allow diff type or representation of object using same constructor code

Use: 
1. complex object creation: need to create object with many parameter (telescoping contructor anti pattern)
2. Validation and failing object creation: Validate parameter before object creation
3. Immutability: Immutable object easier to maintain and extend wheareas mutable object can lead bugs

Steps:
    Java: 
        1. Add a static inner class to the class that you want to create. This inner class know as builder class
        2. Add Private contructor to that class you want to create. This will used by builder class to create object
        3. Add static Builder method in main class which return the instance of builder class
        4. Implement the build method in innner class. this will return object of private contructor of main class
        5. Add set method for each parameter in builder class to validate and return the instance of builder class

    JS: 
      1. Typescript doesn't support inner class. Hence we have create builder class outside
      2. Make builder class and make main class object as private and initiate in contructor of builder class
*/

/* Java Builder Class */

/*

class Student {
    private String name;
    private int age;

    private student(String name, int age) {
        this.name = name;
        this.age= age;
    }

    public static Builder builder() {
        return new Builder();
    }

    public static class Builder{
        private String name;
        private int age;
        
        public Builder setAge(int age) {
            this.age = age;
            return this;
        }

        public Builder setName(String name) {
            this.name = name;
            return this;
        }

        private void validate() {
            // Add validation logic
        }

        public Student build() {
            return new Stundent(this.name, this.age);
        }
    }
}


*/



/* JS Builder Class  */

class Student {
    name: string;
    age: number;
    gradeYear: number;
    constructor() {
    }

    public static builder(): Builder{
        return new Builder();
    }
}

class Builder {

    private student:Student;

    constructor(){
        this.student = new Student();
    }
    

    public setName(name: string): Builder {
        this.student.name = name;
        return this;
    }

    public setAge(age: number): Builder {
        this.student.age = age;
        return this;
    }

    public setGrade(gradeYear: number): Builder {
        this.student.gradeYear = gradeYear;
        return this;
    }

    private validate() {
        if(this.student.gradeYear < 2020) {
            throw 'Invalid grade year';
        }
        
        if(this.student.age < 18) {
            throw "Age is not valid";
        }
    }

    public build() {
        this.validate();
        return this.student;
    }
    
}

const s = Student.builder().setAge(24).setName('Amit').setGrade(2030).build();
console.log(s);