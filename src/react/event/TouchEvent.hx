package react.event;

import js.html.TouchList;
import react.event.SyntheticEvent;

/**
    タッチイベントを有効化するには、コンポーネントを描画する前に`React.initializeTouchEvents(true)`を実行して下さい。
**/
extern class TouchEvent extends SyntheticEvent {
    public var altKey(default,null):Bool;
    public var changedTouches(default,null):TouchList;
    public var ctrlKey(default,null):Bool;
    public function getModifierState(key:String):Bool;
    public var metaKey(default,null):Bool;
    public var shiftKey(default,null):Bool;
    public var targetTouches(default,null):TouchList;
    public var touches(default,null):TouchList;
}
