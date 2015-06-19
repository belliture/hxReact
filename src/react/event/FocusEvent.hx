package react.event;

import js.html.EventTarget;
import react.event.SyntheticEvent;

extern class FocusEvent extends SyntheticEvent {
    public var relatedTarget(default,null):EventTarget;
}
