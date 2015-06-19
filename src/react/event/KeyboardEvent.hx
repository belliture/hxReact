package react.event;

import react.event.SyntheticEvent;

extern class KeyboardEvent extends SyntheticEvent {
    public var altKey(default,null):Bool;
    public var charCode(default,null):Int;
    public var ctrlKey(default,null):Bool;
    public function getModifierState(key:String):Bool;
    public var key(default,null):String;
    public var keyCode(default,null):Int;
    public var locale(default,null):String;
    public var location(default,null):Int;
    public var metaKey(default,null):Bool;
    public var repeat(default,null):Bool;
    public var shiftKey(default,null):Bool;
    public var which(default,null):Int;
}

