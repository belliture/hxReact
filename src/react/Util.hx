package react;

class Util {
    public static inline function jsThis():Dynamic {
        return untyped __js__("this");
    }

    public static function setConstructor(classes:Array<Class<Dynamic>>):Void {
        for (i in classes.iterator()) {
            untyped i.prototype.constructor = i;
        }
    }
}
