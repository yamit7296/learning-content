S - Single Responsibility Principal
> Every code unit (methos, class, package, etc) should always have a one responsibility
O - Open/Closed Principle
> Open for extension but close for modification

L - Liskov Substitution Principle
> We can use object of any child class in place of the parent class as it is without any special treatment

Bird b = new Pigeon();

I - Interface Segregation Principle
> No not combine multiple things into single interface

D - Dependency Inversion Principle
> No 2 concrete class should ever depend on each other directly, instead there should be something abstract/Interface

Crow -> CSFB

Crow c = new CSFB();
class Crow {
    void fly() {
        CSFB.fly();
    }
}




Design Patterns

Type of Design Patterns

1. Creation - How object would be created
> Singleton Design
> Builders
> Factory
> Prototype & Registry

2. Structural - How particular class would be structured
> Adapter
> Facade
> Decorator
> Flyweight

3. behaviors - How behaviors would be
> Strategy
> Observer
