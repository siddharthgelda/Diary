define("pinItPinWidget/layout/PinItPinWidgetLayout", ["layout"], function(a){"use strict"; return a.registerCustomMeasure("wysiwyg.common.components.pinitpinwidget.viewer.PinItPinWidget", function(a, b, c){b.height[a] = c[a].offsetHeight, b.width[a] = c[a].offsetWidth}), {}}), define("pinItPinWidget/aspects/PinterestWidgetPostMessageAspect", ["core"], function(a){"use strict"; var b = function(a){a.registerToMessage(this.handlePostMessage.bind(this)), this.siteAPI = a, this.dimensions = {}, this.shouldShowError = {}}; return b.prototype = {handlePostMessage:function(a){var b; try{if (b = JSON.parse(a.data), "pinterest" !== b.type)return; if (b.showError)return this.shouldShowError[b.compId] = "error", void this.siteAPI.forceUpdate(); this.shouldShowError[b.compId] = "noError", this.dimensions[b.compId] = {height:b.height, width:b.width}, this.siteAPI.forceUpdate()} catch (c){return}}, getIframeDimensions:function(a){return this.dimensions[a]}, shouldPresentErrorMessage:function(a){return this.shouldShowError[a]}}, a.siteAspectsRegistry.registerSiteAspect("PinterestWidgetPostMessageAspect", b), b}), define("pinItPinWidget", ["lodash", "core", "santaProps", "utils", "pinItPinWidget/layout/PinItPinWidgetLayout", "pinItPinWidget/aspects/PinterestWidgetPostMessageAspect"], function(a, b, c, d){"use strict"; function g(b, c, d){return d?e:a.assign({}, b, c)}var e = {height:274, width:225}, f = function(a){var b = {pinUrl:a.compData.pinId, compId:a.id}; return a.santaBase + "/static/external/pinterestWidget.html?" + d.urlUtils.toQueryString(b)}; return{displayName:"PinItPinWidget", mixins:[b.compMixins.skinBasedComp, b.compMixins.skinInfo], propTypes:{shouldPresentErrorMessage:c.Types.Pinterest.shouldPresentErrorMessage, iframeDimensions:c.Types.Pinterest.iframeDimensions, santaBase:c.Types.santaBase.isRequired, compData:c.Types.Component.compData.isRequired}, statics:{useSantaTypes:!0}, getInitialState:function(){return{$shouldShowError:this.props.shouldPresentErrorMessage || "noError"}}, componentWillReceiveProps:function(){var a = this.props.shouldPresentErrorMessage; a !== this.state.$shouldShowError && this.setState({$shouldShowError:a})}, getSkinProperties:function(){var b = "error" === this.state.$shouldShowError, c = g(this.props.style, this.props.iframeDimensions, b); return{"":{style:a.pick(c, ["width", "height"])}, iframe:{src:f(this.props), style:b?{height:"0%", width:"0%"}:{height:"100%", width:"100%"}}}}}});