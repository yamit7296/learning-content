/*

Def: Single Object should be created for all object creatioin of class
Use: Shared Resource e.g. db connection/ single log objects

Steps:
hide the constructor - So other classes should not create the object
global Access - make get instance method as static

*/


class Database {
    private static connection: Database | null = null;
    private constructor() {}

    public static getConnection(): Database{
        if(this.connection === null) {
            this.connection = new Database();
        }
        return this.connection
    }
}

const db = Database.getConnection();