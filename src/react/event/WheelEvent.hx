package react.event;

import react.event.SyntheticEvent;

extern class WheelEvent extends SyntheticEvent {
    public var deltaMode(default,null):Int;
    public var deltaX(default,null):Int;
    public var deltaY(default,null):Int;
    public var deltaZ(default,null):Int;
}
