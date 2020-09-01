define("render", ["lodash", "utils", "core", "reactDOM"], function(a, b, c, d){"use strict"; function f(a){var c = a.fullFunctionality.getConfig(), d = b.urlUtils.parseUrlParams(window.location.search.replace(/^\??/, "")); if (!d.dsOrigin)throw new Error("You must define dsOrigin parameter in order to use the documentServices - please speak to html-server team for a key"); return c.origin = d.dsOrigin, c}function g(c, d){var e = a(d).keys().pull("masterPage").value(); return a.mapValues(d, function(d, f){var g = a.get(window, "sssr.serverSideRender"); return g && window.pagesData && window.pagesData[f]?d:b.dataFixer.fix(d, e.slice(), c.requestModel, c.currentUrl, c.urlFormatModel)})}function h(b, f, g, h, i){c.renderer.renderSite(f, g, h, function(c){if (window.rendered)window.rendered.forceUpdate();  else{var f = document.getElementById("SITE_CONTAINER").children[0]; window.rendered = d.render(c, document.getElementById("SITE_CONTAINER")); var g = document.getElementById("SITE_CONTAINER").children[0]; window.sssr && (window.sssr.success = f === g, window.sssr.clientSideRender = {sinceInitialTimestamp:Date.now() - window.wixBiSession.initialTimestamp, performanceNow:e()}), window.onpopstate = window.rendered.onPopState, window.onhashchange = window.rendered.onHashChange, window.parent && window.rendered.registerAspectToEvent("siteReady", function(){window.documentServices && i && i(window.rendered), window.parent.postMessage("documentServicesLoaded", "*")}), b.qaAutomation && (a.set(window, "testApi.domSelectors", b.qaAutomation.getDomSelectors(b.react, b.reactDOM)), window.testApi.domSelectors.setSearchRoot(window.rendered), a.set(window, "testApi.isReady", !0))}})}function i(d, e, i, j, k){var l = d.documentServices; b.urlUtils.isQueryParamOn(i.currentUrl, "isSantaEditor") && (i.renderFlags = a.assign({}, i.renderFlags, {componentViewMode:"editor"})); var m = new b.SiteData(i); try{l && a.isUndefined(window.karmaIntegration) && window.parent.FS && b.integrations.fullStory.start()} catch (n){}var o = c.SiteDataAPI.createSiteDataAPIAndDal(m, e), p = o.siteData, q = o.siteDataAPI, r = {pointers:o.pointers, displayedDAL:o.displayedDal, siteDataAPI:q}; l?(o.dataLoadedRegistrar = q.registerDataLoadedCallback.bind(q), window.documentServices = new l.Site(f(l.configs), o, a.partial(g, i), a.partial(h, d, p, r, j)), a.set(window, "testApi.documentServices", window.documentServices)):(m.pagesData = m.pagesData && g(i, m.pagesData), h(d, p, r, j, k))}var e = window.performance && window.performance.now?window.performance.now.bind(window.performance):Date.now.bind(Date); return{clientSide:i}});