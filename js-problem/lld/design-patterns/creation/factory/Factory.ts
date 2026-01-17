/*

Def: Factory Design pattern means a method should create a object and return know as factory method

Use: Flutter (ANDROID, IOS) component based on input, DB (MYSQL, postgres, mongoDB)

Steps:
    1. create Main Class such as Flutter or DB shown here.
    2. create Facatory Method
    3. create another class which provide factory instance of given input such as Android and IOS
    4. Create Factory Interface and group all create function in it which should return object
    5. create all factory by implementing Factory interface
*/




import AndroidButton from "./component/Button/AndroidButton";
import IOSButton from "./component/Button/IOSButton";
import AndroidMenu from "./component/menu/AndroidMenu";
import IOSMenu from "./component/menu/IOSMenu";

enum SUPPORTED_PLATFORM_ENUM {
    ANDROID,
    IOS
}

class Flutter {
    public supportedPlatform:SUPPORTED_PLATFORM_ENUM;
    public setRefreshRate(){}
    public setTheme() {}

    constructor(platform: SUPPORTED_PLATFORM_ENUM) {
        this.supportedPlatform = platform;
    }
    
    public createFactory(): Factory {
        return UIFactoryFactory.getFactory(this.supportedPlatform);
    }
}

class UIFactoryFactory{
    public static getFactory(platform: SUPPORTED_PLATFORM_ENUM): Factory{
        switch(platform){
            case SUPPORTED_PLATFORM_ENUM.ANDROID: return new AndroidFactory();
            case SUPPORTED_PLATFORM_ENUM.IOS: return new IOSFactory();
        }
    }
}

interface Factory{
    createMenu()
    createButton()
}

class AndroidFactory implements Factory{
    createMenu() {
        return new AndroidMenu();
    }
    createButton() {
        return new AndroidButton();
    }


}

class IOSFactory implements Factory{
    createMenu() {
        return new IOSMenu();
    }
    createButton() {
        return new IOSButton();
    }
}

const flutter = new Flutter(SUPPORTED_PLATFORM_ENUM.ANDROID);
const android = flutter.createFactory();
console.log(android.createButton());
console.log(android.createMenu());