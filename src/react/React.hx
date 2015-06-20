package react;

import haxe.extern.EitherType;
import js.html.DOMElement;
import js.html.DOMWindow;
import js.html.Event;
import js.html.EventTarget;
import js.html.TouchList;

@:jsRequire("react")
extern class React {
    @:native("PropTypes")
    public static var propTypes:PropTypes;

    @:native("DOM")
    public static var dom:ReactDOM;

    @:native("DOM")
    public static var svg:ReactSVG;

    @:native("Children")
    public static var children:ReactChildrenUtility;

    public static function createClass(spec:ReactComponentSpec):ReactClass;

    public static function createElement(reactClassOrTagName:EitherType<ReactClass, String>, ?props:Dynamic, ?children:Dynamic):ReactElement;

    public static function cloneElement(element:ReactElement, ?props:Dynamic, ?children:Dynamic):ReactElement;

    // FactoryFunctionの用意を考えておく
    public static function createFactory(reactClassOrTagName:EitherType<ReactClass, String>):Dynamic;

    public static function render(element:ReactElement, container:DOMElement, ?callback:Void -> Void):ReactComponent;

    public static function unmountComponentAtNode(container:DOMElement):Bool;

    public static function renderToString(element:ReactElement):String;

    public static function renderToStaticMarkup(element:ReactElement):String;

    public static function isValidElement(object:Dynamic):Bool;

    public static function findDOMNode(component:ReactComponent):DOMElement;

    public static function initializeTouchEvents(shouldUseTouch:Bool):Void;
}

extern class ReactClass {}

extern class ReactElement {}

/**
    使用する際は `refs` / `props` / `state` から取得する値を適切な型を持たせた変数に入れる等して下さい。
**/
extern class ReactComponent
{
    public var refs(default,null):Dynamic;

    public var props(default,null):Dynamic;

    public var state(default,null):Dynamic;

    /** `props.children`へのエイリアス **/
    @:native("props.children")
    public var children(default,null):ReactChildren;

    public function setState(nextStateOrUpdater:Dynamic, ?callback:Void -> Void):Void;

    public function replaceState(nextState:Dynamic, ?callback:Void -> Void):Void;

    public function forceUpdate(?callback:Void -> Void):Void;

    public function getDOMNode():DOMElement;

    public function isMounted():Bool;

    public function setProps(nextProps:Dynamic, ?callback:Void -> Void):Void;

    public function replaceProps(nextProps:Dynamic, ?callback:Void -> Void):Void;
}

/**
    この型の構造体は`React.createClass`の引数になります。
**/
typedef ReactComponentSpec = {
    function render():ReactElement;

    /** type: Void -> object **/
    @:optional function getInitialState():Dynamic;

    /** type: Void -> object **/
    @:optional function getDefaultProps():Dynamic;

    /** type: object **/
    @:optional var propTypes: Dynamic<PropType>;

    /** type: array **/
    @:optional var mixins: Array<Dynamic>;

    /** type: object **/
    @:optional var statics: Dynamic;

    @:optional var displayName: String;

    @:optional function componentWillMounto():Void;

    @:optional function componentDidMount():Void;

    /** type: object nextProps -> Void **/
    @:optional function componentWillReceiveProps(nextState:Dynamic):Void;

    /** type: object nextProps -> object nextState -> Void **/
    @:optional function shouldComponentUpdate(nextProps:Dynamic, nextState:Dynamic):Bool;

    /** type: object nextProps -> object nextState -> Void **/
    @:optional function componentWillUpdate(nextProps:Dynamic, nextState:Dynamic):Void;

    /** type: object prevProps -> object prevState -> Void **/
    @:optional function componentDidUpdate(prevProps:Dynamic, prevState:Dynamic):Void;

    @:optional function componentWillUnmount():Void;
}

/**
    中身を型でどう表現するか思いつかないので、ブラックボックスとしています。
**/
extern class ReactChildren {}

/**
    `React.children`から呼び出して使用して下さい。
**/
extern class ReactChildrenUtility {
    public function map(children:ReactChildren, func:Dynamic, ?context:ReactComponent):ReactChildren;
    public function forEach(children:ReactChildren, func:Dynamic, ?context:ReactComponent):Void;
    public function count(children:ReactChildren):Int;
    public function only(children:ReactChildren):Dynamic;
}

/**
    `React.propTypes`から呼び出して使用して下さい。
**/
extern class PropTypes {
    /** A JS primitive **/
    public var array:PropType;
    /** A JS primitive **/
    public var bool:PropType;
    /** A JS primitive **/
    public var func:PropType;
    /** A JS primitive **/
    public var number:PropType;
    /** A JS primitive **/
    public var object:PropType;
    /** A JS primitive **/
    public var string:PropType;

    /** Anything that can be rendered: numbers, strings, elements or an array containing these types. **/
    public var node:PropType;

    /** A React element **/
    public var element:PropType;

    public var any:PropType;

    public function instanceOf(classType:Dynamic):PropType;

    public function oneOf(any:Array<Dynamic>):PropType;

    public function oneOfType(any:Array<PropType>):PropType;

    public function arrayOf(propType:PropType):PropType;

    public function objectOf(propType:PropType):PropType;

    public function shape(object:Dynamic<PropType>):PropType;
}

extern class PropType {
    public var isRequired:Dynamic;
}

/**
    `React.dom`から呼び出して使用して下さい。

    `var`メソッドはJSへ変換した後に予約語と衝突しない良い方法が分からないのでこのクラスに含めていません。
**/
extern class ReactDOM
{
    public function a(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function abbr(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function address(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function area(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function article(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function aside(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function audio(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function b(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function base(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function bdi(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function bdo(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function big(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function blockquote(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function body(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function br(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function button(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function canvas(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function caption(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function cite(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function code(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function col(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function colgroup(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function data(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function datalist(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function dd(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function del(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function details(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function dfn(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function dialog(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function div(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function dl(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function dt(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function em(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function embed(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function fieldset(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function figcaption(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function figure(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function footer(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function form(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function h1(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function h2(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function h3(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function h4(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function h5(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function h6(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function head(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function header(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function hr(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function html(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function i(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function iframe(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function img(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function input(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function ins(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function kbd(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function keygen(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function label(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function legend(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function li(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function link(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function main(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function map(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function mark(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function menu(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function menuitem(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function meta(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function meter(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function nav(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function noscript(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function object(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function ol(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function optgroup(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function option(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function output(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function p(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function param(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function picture(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function pre(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function progress(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function q(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function rp(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function rt(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function ruby(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function s(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function samp(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function script(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function section(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function select(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function small(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function source(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function span(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function strong(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function style(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function sub(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function summary(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function sup(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function table(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function tbody(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function td(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function textarea(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function tfoot(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function th(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function thead(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function time(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function title(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function tr(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function track(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function u(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function ul(?props:Dynamic, ?children:Dynamic):ReactElement;
    //public function var_(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function video(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function wbr(?props:Dynamic, ?children:Dynamic):ReactElement;
}

/**
    `React.svg`から呼び出して使用して下さい。
**/
extern class ReactSVG {
    public function circle(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function clipPath(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function defs(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function ellipse(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function g(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function line(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function linearGradient(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function mask(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function path(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function pattern(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function polygon(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function polyline(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function radialGradient(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function rect(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function stop(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function svg(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function text(?props:Dynamic, ?children:Dynamic):ReactElement;
    public function tspan(?props:Dynamic, ?children:Dynamic):ReactElement;
}
