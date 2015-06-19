package react.event;

import js.html.DataTransfer;
import react.event.SyntheticEvent;

extern class ClipboardEvent extends SyntheticEvent {
    public var clipboardData(default,null):DataTransfer;
}
