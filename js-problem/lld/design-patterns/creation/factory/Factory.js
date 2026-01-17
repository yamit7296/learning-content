"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var AndroidButton_1 = require("./component/Button/AndroidButton");
var IOSButton_1 = require("./component/Button/IOSButton");
var AndroidMenu_1 = require("./component/menu/AndroidMenu");
var IOSMenu_1 = require("./component/menu/IOSMenu");
var SUPPORTED_PLATFORM_ENUM;
(function (SUPPORTED_PLATFORM_ENUM) {
    SUPPORTED_PLATFORM_ENUM[SUPPORTED_PLATFORM_ENUM["ANDROID"] = 0] = "ANDROID";
    SUPPORTED_PLATFORM_ENUM[SUPPORTED_PLATFORM_ENUM["IOS"] = 1] = "IOS";
})(SUPPORTED_PLATFORM_ENUM || (SUPPORTED_PLATFORM_ENUM = {}));
var Flutter = /** @class */ (function () {
    function Flutter(platform) {
        this.supportedPlatform = platform;
    }
    Flutter.prototype.setRefreshRate = function () { };
    Flutter.prototype.setTheme = function () { };
    Flutter.prototype.createFactory = function () {
        return UIFactoryFactory.getFactory(this.supportedPlatform);
    };
    return Flutter;
}());
var UIFactoryFactory = /** @class */ (function () {
    function UIFactoryFactory() {
    }
    UIFactoryFactory.getFactory = function (platform) {
        switch (platform) {
            case SUPPORTED_PLATFORM_ENUM.ANDROID: return new AndroidFactory();
            case SUPPORTED_PLATFORM_ENUM.IOS: return new IOSFactory();
        }
    };
    return UIFactoryFactory;
}());
var AndroidFactory = /** @class */ (function () {
    function AndroidFactory() {
    }
    AndroidFactory.prototype.createMenu = function () {
        return new AndroidMenu_1.default();
    };
    AndroidFactory.prototype.createButton = function () {
        return new AndroidButton_1.default();
    };
    return AndroidFactory;
}());
var IOSFactory = /** @class */ (function () {
    function IOSFactory() {
    }
    IOSFactory.prototype.createMenu = function () {
        return new IOSMenu_1.default();
    };
    IOSFactory.prototype.createButton = function () {
        return new IOSButton_1.default();
    };
    return IOSFactory;
}());
var flutter = new Flutter(SUPPORTED_PLATFORM_ENUM.IOS);
var android = flutter.createFactory();
console.log(android.createButton());
console.log(android.createMenu());
