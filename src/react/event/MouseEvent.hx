package react.event;

import js.html.EventTarget;
import react.event.SyntheticEvent;

extern class MouseEvent extends SyntheticEvent {
    public var altKey(default,null):Bool;
    public var button(default,null):Int;
    public var buttons(default,null):Int;
    public var clientX(default,null):Int;
    public var clientY(default,null):Int;
    public var ctrlKey(default,null):Bool;
    public function getModifierState(key:String):Bool;
    public var metaKey(default,null):Bool;
    public var pageX(default,null):Int;
    public var pageY(default,null):Int;
    public var relatedTarget(default,null):EventTarget;
    public var screenX(default,null):Int;
    public var screenY(default,null):Int;
    public var shiftKey(default,null):Bool;
}
