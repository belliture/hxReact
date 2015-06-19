package react.event;

import js.html.Event;
import js.html.EventTarget;

extern class SyntheticEvent {
    public var bubbles(default,null):Bool;
    public var cancelable(default,null):Bool;
    public var currentTarget(default,null):EventTarget;
    public var defaultPrevented(default,null):Bool;
    public var eventPhase(default,null):Int;
    public var isTrusted(default,null):Bool;
    public var nativeEvent:Event;
    public function preventDefault():Void;
    public function stopPropagation():Void;
    public var target(default,null):EventTarget;
    public var timeStamp(default,null):Int;
    public var type(default,null):String;
}
