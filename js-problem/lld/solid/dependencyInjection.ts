// class Swiggy {
//     pay() {
//         const gpay = new Gpay();
//         gpay.transferMoney();
//     }
// }


interface IPayment {
    pay(): void;
}

class Gpay implements IPayment {
    pay() {
        this.transferMoney();
    }

    transferMoney() {
        console.log(`Gpay Method get called`)
    }
}

class Paytm implements IPayment{
    pay() {
        this.sendMoney();
    }

    sendMoney() {
        console.log(`Paytm Method get called`)
    }
}

const payment = new Paytm();

class Swiggy {
    payment: IPayment; 
    constructor(payment: IPayment) {
        this.payment = payment;
    }

    pay() {
        this.payment.pay()
    }
}


