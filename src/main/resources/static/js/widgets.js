define("widgets/core/widgetDataHelper", ["lodash"], function(a){"use strict"; return{registerWidgetHandler:function(b, c, d){a.set(b, ["widgetHandlers", c], d)}, getWidgetHandler:function(b, c){return a.get(b, ["widgetHandlers", c])}, registerWidgetInstance:function(b, c, d, e, f, g){a.set(b, ["widgetInstances", c], {widgetInstanceId:c, handlerId:d, rootId:e, type:f, displayName:g})}, getWidget:function(b, c){return a.get(b, ["widgetInstances", c])}, getWidgetsOfRoots:function(b, c){var d = a.get(b, ["widgetInstances"], []); return a.filter(d, function(b){return a.includes(c, b.rootId)})}, getWidgetInstanceHandler:function(a, b){var c = this.getWidgetInstanceHandlerId(a, b); return this.getWidgetHandler(a, c)}, getWidgetInstanceHandlerId:function(b, c){return a.get(b, ["widgetInstances", c, "handlerId"])}, updateWidgetComponents:function(b, c, d){a.set(b, ["widgetInstances", c, "components"], d)}, getWidgetComponents:function(b, c){return a.get(b, ["widgetInstances", c, "components"], [])}, getWidgetType:function(b, c){return a.get(b, ["widgetInstances", c, "type"])}, getRegisteredWidgetIds:function(b){return a.keys(b.widgetInstances)}}}), define("widgets/core/WidgetAspect", ["lodash", "utils", "widgets/core/widgetDataHelper", "core", "experiment"], function(a, b, c, d, e){"use strict"; function f(b, d){var e = b.getSiteData().widgetsStore, f = c.getRegisteredWidgetIds(e); return a(f).map(function(a){return{widgetId:a, handlerId:c.getWidgetInstanceHandlerId(e, a), compIds:c.getWidgetComponents(e, a)}}).filter(function(b){return!a.isEmpty(a.intersection(b.compIds, d))}).groupBy("handlerId").mapValues(function(b){return a.map(b, "widgetId")}).value()}function g(a){return!!a.renderFlags.initWixCode}function h(b, c){a.forEach(d.widgetCollectorRegistry.getWidgetCollectors(), function(a){a.collectHandlers(b), a.collectWidgets(b, c), a.collectComponents(b, c)})}function i(a){this._siteAPI = a, this._activeWidgetIds = [], this._siteAPI.registerToSiteWillMount(t.bind(this)), this._siteAPI.registerToSiteWillUpdate(s.bind(this)), this._siteAPI.getRuntimeDal().registerChangeListener(k.bind(this)), e.isOpen("sv_hoverBox") && this._siteAPI.getSiteDataAPI().registerDisplayedJsonUpdateCallback(l.bind(this))}function j(b, c, d){b = a.isArray(b)?b:[b]; var e = f(this._siteAPI, b); a.forEach(e, function(b, e){var f = this.getWidgetHandler(e); f && a.forEach(b, function(a){c.call(d, f, a)}, this)}, this)}function k(b, c){var d = {dataChange:"data", propsChange:"props", stateChange:"state", layoutChange:"layout"}, e = a.zipObject([d[c.type]], [c.value]), f = a.zipObject([b], [e]); j.call(this, b, function(a, b){a.handleWidgetUpdate(b, f)}, this)}function l(c, d){if (a.includes(this._siteAPI.getAllRenderedRootIds(), c)){var e = this._siteAPI.getRuntimeDal(), f = this._siteAPI.getSiteDataAPI(), g = f.document.getAllCompsUnderRoot(c, d), h = a(g).omit(["SITE_STRUCTURE"]).mapValues(function(a){return b.widgetModel.getCompModel(e, a.id)}).value(); j.call(this, d, function(b, c){b.handleWidgetUpdate(c, a.pick(h, this.getWidgetComponents(c)))}, this)}}function m(a, b){return{widgetInstanceId:b.widgetInstanceId, type:b.type, displayName:b.displayName, components:c.getWidgetComponents(a, b.widgetInstanceId)}}function n(a){return{id:a.widgetInstanceId, type:a.type}}function o(a){return a.widgetInstanceId}function p(b, c){return a.includes(b, c.rootId)}function q(b){var d = this._siteAPI.getSiteData().widgetsStore; return a(c.getWidgetsOfRoots(d, b)).filter(function(b){return!a.includes(this._activeWidgetIds, b.widgetInstanceId)}, this).groupBy("handlerId").forEach(function(b, c){var e = this.getWidgetHandler(c); e && (e.loadWidgets(a.map(b, n)), e.initWidgets(a.map(b, a.partial(m, d))), this._activeWidgetIds = this._activeWidgetIds.concat(a.map(b, "widgetInstanceId")))}, this).commit()}function r(b){var d = this._siteAPI.getSiteData().widgetsStore; a(this._activeWidgetIds).map(a.partial(c.getWidget, d)).filter(b).groupBy("handlerId").forEach(function(b, c){var d = this.getWidgetHandler(c); d && (d.stopWidgets(a.map(b, o)), this._activeWidgetIds = a.difference(this._activeWidgetIds, a.map(b, "widgetInstanceId")))}, this).commit()}function s(){var b = this._siteAPI.getRootIdsWhichShouldBeRendered(); h(this._siteAPI, b), g(this._siteAPI.getSiteData())?(r.call(this, a.negate(a.partial(p, b))), q.call(this, b)):r.call(this, a.partial(p, b))}function t(){var a = this._siteAPI.getRootIdsWhichShouldBeRendered(); h(this._siteAPI, a), g(this._siteAPI.getSiteData()) && q.call(this, a)}return i.prototype.registerWidgetHandler = function(a, b){var d = this._siteAPI.getSiteData().widgetsStore; c.registerWidgetHandler(d, a, b)}, i.prototype.getWidgetHandler = function(a){var b = this._siteAPI.getSiteData().widgetsStore; return c.getWidgetHandler(b, a)}, i.prototype.getWidgetInstanceHandler = function(a){var b = this._siteAPI.getSiteData().widgetsStore; return c.getWidgetInstanceHandler(b, a)}, i.prototype.registerWidgetInstance = function(a, b, d, e, f){var g = this._siteAPI.getSiteData(); c.registerWidgetInstance(g.widgetsStore, a, b, d, e, f)}, i.prototype.updateWidgetComponents = function(a, b){var d = this._siteAPI.getSiteData().widgetsStore; c.updateWidgetComponents(d, a, b)}, i.prototype.getWidgetComponents = function(a){var b = this._siteAPI.getSiteData().widgetsStore; return c.getWidgetComponents(b, a)}, i.prototype.getWidgetType = function(a){var b = this._siteAPI.getSiteData().widgetsStore; return c.getWidgetType(b, a)}, i.prototype.updateSite = function(c){if (!this._updating){this._updating = !0; var d = this; b.animationFrame.request(function(){d._updating = !1, d._siteAPI.forceUpdate(a.isFunction(c)?c:a.noop)})}}, i.prototype.areAllActiveRootWidgetsReady = function(d){var e = d === b.siteConstants.MASTER_PAGE_ID?this._siteAPI.getSiteData().getRenderedRootsUnderMasterPage():[d], f = this._siteAPI.getSiteData().widgetsStore; return a(c.getWidgetsOfRoots(f, e)).filter(function(b){return a.includes(this._activeWidgetIds, b.widgetInstanceId)}, this).every(function(a){var b = c.getWidgetInstanceHandler(f, a.widgetInstanceId); return b.isWidgetReady(a.widgetInstanceId)})}, i}), define("widgets/behaviors/widgetBehaviorHandler", ["lodash"], function(a){"use strict"; function c(a, b, c){var d = b.getSiteAspect("WidgetAspect"), e = d.getWidgetInstanceHandler(a.targetId); e.handleEvent(a.targetId, a.name, a.params, c)}function d(c){var d = a.at(c, b); return d.push(c.params.callbackId), d.join(",")}var b = ["type", "name", "targetId"]; return{handle:c, getUniqueIdentifier:d}}), define("widgets/messages/messageBuilder", [], function(){"use strict"; function a(a, b){return{handlerId:a, type:"load_widgets", widgets:b}}function b(a, b){return{handlerId:a, type:"init_widgets", widgets:b}}function c(a){return{type:"stop_widgets", widgetIds:a}}function d(a, b){return{type:"update", widgetInstanceId:a, updates:b}}return{loadWidgetsMessage:a, initWidgetsMessage:b, stopWidgetsMessage:c, updateWidgetMessage:d}}), define("widgets", ["core", "widgets/core/WidgetAspect", "widgets/core/widgetDataHelper", "widgets/behaviors/widgetBehaviorHandler", "widgets/messages/messageBuilder"], function(a, b, c, d, e){"use strict"; return a.behaviorHandlersFactory.registerHandler("widget", d), a.siteAspectsRegistry.registerSiteAspect("WidgetAspect", b), {widgetDataHelper:c, messageBuilder:e}});