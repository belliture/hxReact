package react.event;

import js.html.DOMWindow;
import react.event.SyntheticEvent;

extern class UIEvent extends SyntheticEvent {
    public var detail(default,null):Int;
    public var view(default,null):DOMWindow;
}
