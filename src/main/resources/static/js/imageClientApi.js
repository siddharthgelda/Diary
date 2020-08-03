define("imageClientApi/helpers/utils", [], function(){"use strict"; function a(){for (var a = arguments[0] || {}, b = Array.prototype.slice.call(arguments, 1, arguments.length), c = 0; c < b.length; c++){var d = b[c]; for (var e in d)d.hasOwnProperty(e) && (a[e] = d[e])}return a}function b(a, b){return a.indexOf?a.indexOf(b) > - 1:a && "object" == typeof a?Object.keys(a).some(function(c){return a[c] === b}):!1}function c(a){return function(c){var d = a; for (var e in c)c.hasOwnProperty(e) && (d = d.replace(new RegExp("\\$\\{" + e + "\\}", "g"), c[e])); return d}}function d(a){return a[a.length - 1]}return{assign:a, includes:b, last:d, template:c}}), define("imageClientApi/helpers/imageServiceConstants", [], function(){"use strict"; var a = "v1", b = {SCALE_TO_FILL:"fill", SCALE_TO_FIT:"fit", STRETCH:"stretch", ORIGINAL_SIZE:"original_size", TILE:"tile", TILE_HORIZONTAL:"tile_horizontal", TILE_VERTICAL:"tile_vertical", FIT_AND_TILE:"fit_and_tile", LEGACY_STRIP_TILE:"legacy_strip_tile", LEGACY_STRIP_TILE_HORIZONTAL:"legacy_strip_tile_horizontal", LEGACY_STRIP_TILE_VERTICAL:"legacy_strip_tile_vertical", LEGACY_STRIP_SCALE_TO_FILL:"legacy_strip_fill", LEGACY_STRIP_SCALE_TO_FIT:"legacy_strip_fit", LEGACY_STRIP_FIT_AND_TILE:"legacy_strip_fit_and_tile", LEGACY_STRIP_ORIGINAL_SIZE:"legacy_strip_original_size", LEGACY_ORIGINAL_SIZE:"actual_size", LEGACY_FIT_WIDTH:"fitWidth", LEGACY_FIT_HEIGHT:"fitHeight", LEGACY_FULL:"full", LEGACY_BG_FIT_AND_TILE:"legacy_tile", LEGACY_BG_FIT_AND_TILE_HORIZONTAL:"legacy_tile_horizontal", LEGACY_BG_FIT_AND_TILE_VERTICAL:"legacy_tile_vertical", LEGACY_BG_NORMAL:"legacy_normal"}, c = {FIT:"fit", FILL:"fill", CROP:"crop", LEGACY_CROP:"legacy_crop"}, d = {CENTER:"center", TOP:"top", TOP_LEFT:"top_left", TOP_RIGHT:"top_right", BOTTOM:"bottom", BOTTOM_LEFT:"bottom_left", BOTTOM_RIGHT:"bottom_right", LEFT:"left", RIGHT:"right"}, e = {center:"c", top:"t", top_left:"tl", top_right:"tr", bottom:"b", bottom_left:"bl", bottom_right:"br", left:"l", right:"r"}, f = {BG:"bg", IMG:"img", SVG:"svg"}, g = {STATIC:"static", DYNAMIC:"dynamic"}, h = {radius:.66, amount:1, threshold:.01}, i = {HIGH:{size:196e4, quality:90, maxUpscale:1}, MEDIUM:{size:36e4, quality:85, maxUpscale:1}, LOW:{size:16e4, quality:80, maxUpscale:1.2}, TINY:{size:0, quality:80, maxUpscale:1.4}}, j = {HIGH:"HIGH", MEDIUM:"MEDIUM", LOW:"LOW", TINY:"TINY"}; return{alignTypes:d, alignTypesMap:e, transformTypes:c, fittingTypes:b, htmlTag:f, usmType:g, defaultUSM:h, imageQuality:j, imageQualityMap:i, API_VERSION:a}}), define("imageClientApi/helpers/imageServiceUtils", ["imageClientApi/helpers/utils", "imageClientApi/helpers/imageServiceConstants"], function(a, b){"use strict"; function d(a){var b = new window.Image; b.onload = function(){a.isWEBPBrowser = b.width > 0 && b.height > 0}, b.src = "data:image/webp;base64,UklGRjoAAABXRUJQVlA4IC4AAACyAgCdASoCAAIALmk0mk0iIiIiIgBoSygABc6WWgAA/veff/0PP8bA//LwYAAA"}function e(a){return a in document.documentElement.style}function f(b){var c = ["png", "jpeg", "jpg", "wix_ico_mp", "wix_mp"]; return a.includes(c, m(b).toLowerCase())}function g(c, d, e){var f = {message:"ok", valid:!0}; return d && !k(d.id) || (f = {message:'missing or empty "src"', valid:!1}), e || (f = {message:'missing or empty "target"', valid:!1}), a.includes(b.fittingTypes, c) || (f = {message:'missing or empty "fittingType"', valid:!1}), f}function h(a){return f(a) && !j(a)}function i(b){return a.includes(["jpg", "jpeg"], m(b))}function j(a){return/(^https?)|(^data)/.test(a)}function k(a){return!a || !a.trim() || "none" === a.toLowerCase()}function l(a){var b = /\/(.*?)$/.exec(a); return b && b.length?b[1]:a}function m(a){var b = /[.]([^.]+)$/.exec(a); return b && /[.]([^.]+)$/.exec(a)[1] || ""}function n(a, b, c, d){return Math.min(c / a, d / b)}function o(a, b, c, d){return Math.max(c / a, d / b)}function p(a, c, d, e, f){var g; return g = f === b.transformTypes.FILL?o(a, c, d, e):f === b.transformTypes.FIT?n(a, c, d, e):1}function q(a, c, d, e){var f = t(d), g = {width:0, height:0, scaleFactor:0, cssUpscaleNeeded:!1}, h = p(a, c, d.width * f, d.height * f, e), i = w(a, c); if (h > i){switch (e){case b.transformTypes.FILL:g.width = d.width * f * (i / h), g.height = d.height * f * (i / h); break; case b.transformTypes.FIT:g.width = a * i, g.height = c * i}g.scaleFactor = i, g.cssUpscaleNeeded = !0} else{switch (e){case b.transformTypes.FILL:g.width = d.width * f, g.height = d.height * f; break; case b.transformTypes.FIT:g.width = a * h, g.height = c * h}g.scaleFactor = h, g.cssUpscaleNeeded = !1}return g}function r(a, c, d){var e, f; switch (d){case b.alignTypes.CENTER:e = Math.max(0, (a.width - c.width) / 2), f = Math.max(0, (a.height - c.height) / 2); break; case b.alignTypes.TOP:e = Math.max(0, (a.width - c.width) / 2), f = 0; break; case b.alignTypes.TOP_LEFT:e = 0, f = 0; break; case b.alignTypes.TOP_RIGHT:e = Math.max(0, a.width - c.width), f = 0; break; case b.alignTypes.BOTTOM:e = Math.max(0, (a.width - c.width) / 2), f = Math.max(0, a.height - c.height); break; case b.alignTypes.BOTTOM_LEFT:e = 0, f = Math.max(0, a.height - c.height); break; case b.alignTypes.BOTTOM_RIGHT:e = Math.max(0, a.width - c.width), f = Math.max(0, a.height - c.height); break; case b.alignTypes.LEFT:e = 0, f = Math.max(0, (a.height - c.height) / 2); break; case b.alignTypes.RIGHT:e = Math.max(0, a.width - c.width), f = Math.max(0, (a.height - c.height) / 2)}return{x:a.x?a.x + e:e, y:a.y?a.y + f:f, width:Math.min(a.width, c.width), height:Math.min(a.height, c.height)}}function s(a, b){var c = Math.max(0, Math.min(a.width, b.x + b.width) - Math.max(0, b.x)), d = Math.max(0, Math.min(a.height, b.y + b.height) - Math.max(0, b.y)), e = c && d && (a.width !== c || a.height !== d); return e?{x:Math.max(0, b.x), y:Math.max(0, b.y), width:c, height:d}:null}function t(a){return a.pixelAspectRatio || 1}function u(a){return b.alignTypesMap[a.alignment] || b.alignTypesMap[b.alignTypes.CENTER]}function v(a, c){return b.imageQualityMap[x(a, c)].quality}function w(a, c){return b.imageQualityMap[x(a, c)].maxUpscale}function x(a, c){var d = a * c; return d > b.imageQualityMap[b.imageQuality.HIGH].size?b.imageQuality.HIGH:d > b.imageQualityMap[b.imageQuality.MEDIUM].size?b.imageQuality.MEDIUM:d > b.imageQualityMap[b.imageQuality.LOW].size?b.imageQuality.LOW:b.imageQuality.TINY}function y(a, b, c, d, e){var f = p(a, b, c, d, e); return{width:Math.round(a * f), height:Math.round(b * f)}}var c = {isWEBPBrowser:!1, isObjectFitBrowser:!1}; return"undefined" != typeof window && (d(c), c.isObjectFitBrowser = e("objectFit")), {isWEBPBrowserSupport:function(){return c.isWEBPBrowser}, isObjectFitBrowserSupport:function(){return c.isObjectFitBrowser}, isPropertySupported:e, isImageTransformApplicable:h, isValidRequest:g, isImageTypeSupported:f, isJPG:i, getFileExtension:m, getFileName:l, getAlignedRect:r, getOverlappingRect:s, getFitScaleFactor:n, getFillScaleFactor:o, getScaleFactor:p, getCalculatedTransformedData:q, getPixelAspectRatio:t, getAlignment:u, getPreferredImageQuality:v, getPreferredUpscaleFactor:w, getDimension:y}}), define("imageClientApi/helpers/imageTransformParts", ["imageClientApi/helpers/utils", "imageClientApi/helpers/imageServiceConstants", "imageClientApi/helpers/imageServiceUtils"], function(a, b, c){"use strict"; function d(d, l, m){var n, o = {src:{id:l.id, width:l.width, height:l.height, isCropped:!1}, fittingType:d, parts:[]}; if (!c.isImageTransformApplicable(l.id))return o; switch (l.crop && (n = c.getOverlappingRect(l, l.crop), n && (o.src.width = n.width, o.src.height = n.height, o.src.cropped = !0, o.parts.push(h(n)))), d){case b.fittingTypes.SCALE_TO_FIT:case b.fittingTypes.LEGACY_FIT_WIDTH:case b.fittingTypes.LEGACY_FIT_HEIGHT:case b.fittingTypes.LEGACY_FULL:case b.fittingTypes.FIT_AND_TILE:case b.fittingTypes.LEGACY_BG_FIT_AND_TILE:case b.fittingTypes.LEGACY_BG_FIT_AND_TILE_HORIZONTAL:case b.fittingTypes.LEGACY_BG_FIT_AND_TILE_VERTICAL:case b.fittingTypes.LEGACY_BG_NORMAL:o.parts.push(e(o, m)); break; case b.fittingTypes.SCALE_TO_FILL:o.parts.push(f(o, m)); break; case b.fittingTypes.STRETCH:o.parts.push(g(o, m)); break; case b.fittingTypes.TILE_HORIZONTAL:case b.fittingTypes.TILE_VERTICAL:case b.fittingTypes.TILE:case b.fittingTypes.LEGACY_ORIGINAL_SIZE:case b.fittingTypes.ORIGINAL_SIZE:n = c.getAlignedRect(o.src, m, m.alignment), o.src.isCropped?(a.assign(o.parts[0], n), o.src.width = n.width, o.src.height = n.height):o.parts.push(h(n)); break; case b.fittingTypes.LEGACY_STRIP_TILE_HORIZONTAL:case b.fittingTypes.LEGACY_STRIP_TILE_VERTICAL:case b.fittingTypes.LEGACY_STRIP_TILE:case b.fittingTypes.LEGACY_STRIP_ORIGINAL_SIZE:o.parts.push(k(m)); break; case b.fittingTypes.LEGACY_STRIP_SCALE_TO_FIT:case b.fittingTypes.LEGACY_STRIP_FIT_AND_TILE:o.parts.push(i(m)); break; case b.fittingTypes.LEGACY_STRIP_SCALE_TO_FILL:o.parts.push(j(m))}return o}function e(a, d){var e = c.getCalculatedTransformedData(a.src.width, a.src.height, d, b.transformTypes.FIT); return{transformType:b.transformTypes.FILL, width:Math.round(e.width), height:Math.round(e.height), alignment:b.alignTypesMap.center, upscale:e.scaleFactor > 1?",lg_1":"", forceUSM:!1, scaleFactor:e.scaleFactor, cssUpscaleNeeded:e.cssUpscaleNeeded}}function f(a, d){var e = c.getCalculatedTransformedData(a.src.width, a.src.height, d, b.transformTypes.FILL); return{transformType:b.transformTypes.FILL, width:Math.round(e.width), height:Math.round(e.height), alignment:c.getAlignment(d), upscale:e.scaleFactor > 1?",lg_1":"", forceUSM:!1, scaleFactor:e.scaleFactor, cssUpscaleNeeded:e.cssUpscaleNeeded}}function g(d, f){var g = c.getScaleFactor(d.src.width, d.src.height, f.width, f.height, b.transformTypes.FILL), h = a.assign({}, f); return h.width = d.src.width * g, h.height = d.src.height * g, e(d, h)}function h(a){return{transformType:b.transformTypes.CROP, x:Math.round(a.x), y:Math.round(a.y), width:Math.round(a.width), height:Math.round(a.height), upscale:"", forceUSM:!1, scaleFactor:1, cssUpscaleNeeded:!1}}function i(a){return{transformType:b.transformTypes.FIT, width:Math.round(a.width), height:Math.round(a.height), upscale:"", forceUSM:!0, scaleFactor:1, cssUpscaleNeeded:!1}}function j(a){return{transformType:b.transformTypes.FILL, width:Math.round(a.width), height:Math.round(a.height), alignment:c.getAlignment(a), upscale:"", forceUSM:!0, scaleFactor:1, cssUpscaleNeeded:!1}}function k(a){return{transformType:b.transformTypes.LEGACY_CROP, width:Math.round(a.width), height:Math.round(a.height), alignment:c.getAlignment(a), upscale:"", forceUSM:!1, scaleFactor:1, cssUpscaleNeeded:!1}}return{getParsedRequest:d}}), define("imageClientApi/helpers/imageTransformFilters", ["imageClientApi/helpers/utils", "imageClientApi/helpers/imageServiceConstants", "imageClientApi/helpers/imageServiceUtils"], function(a, b, c){"use strict"; function d(a, b){return b = b || {}, {quality:f(a, b), unSharpMask:g(a, b), progressive:e(b)}}function e(a){a = a || {}; var b = a.progressive !== !1; return b?"":",bl"}function f(b, d){d = d || {}; var e = a.last(b.parts), f = ""; if (c.isJPG(b.src.id)){var g = c.getPreferredImageQuality(e.width, e.height); f = d.quality && d.quality >= 0 && d.quality <= 100?d.quality:g}return f?",q_" + f.toFixed(0):""}function g(a, c){c = c || {}, c.unsharpMask = c.unsharpMask || {}; var e, d = c.unsharpMaskType || b.usmType.DYNAMIC; return i(c.unsharpMask)?e = d === b.usmType.DYNAMIC?k(a, c.unsharpMask):{radius:c.unsharpMask.radius, amount:c.unsharpMask.amount, threshold:c.unsharpMask.threshold}:j(c.unsharpMask) || (e = k(a, b.defaultUSM)), e?",usm_" + l(e.radius, 2) + "_" + l(e.amount, 2) + "_" + l(e.threshold, 2):""}function h(b){var c = a.last(b.parts), d = c.scaleFactor >= 1; return!d || c.forceUSM}function i(a){var b = "undefined" != typeof a.radius && a.radius >= .1 && a.radius <= 500, c = "undefined" != typeof a.amount && a.amount >= 0 && a.amount <= 10, d = "undefined" != typeof a.threshold && a.threshold >= 0 && a.threshold <= 255; return b && c && d}function j(a){return 0 === a.radius && 0 === a.amount && 0 === a.threshold}function k(a, b){return h(a)?b:null}function l(a, b){var c = Math.pow(10, b || 0); return(a * c / c).toFixed(parseInt(b, 10))}return{getTransformFilters:d}}), define("imageClientApi/engines/transforms", ["imageClientApi/helpers/utils", "imageClientApi/helpers/imageServiceConstants", "imageClientApi/helpers/imageServiceUtils", "imageClientApi/helpers/imageTransformFilters"], function(a, b, c, d){"use strict"; function j(a, j){var k = ""; if (!a.parts || !a.parts.length)return a.src.id; a.parts.forEach(function(a){switch (a.transformType){case b.transformTypes.CROP:k += g(a); break; case b.transformTypes.LEGACY_CROP:k += h(a); break; case b.transformTypes.FIT:k += e(a); break; case b.transformTypes.FILL:k += f(a)}}); var l = i(d.getTransformFilters(a, j)), m = a.src.id + "/" + b.API_VERSION + k + l + "/" + c.getFileName(a.src.id); return m}var e = a.template("/fit/w_${width},h_${height}${upscale}"), f = a.template("/fill/w_${width},h_${height},al_${alignment}${upscale}"), g = a.template("/crop/x_${x},y_${y},w_${width},h_${height}"), h = a.template("/crop/w_${width},h_${height},al_${alignment}"), i = a.template("${quality}${unSharpMask}${progressive}"); return{getImageURI:j}}), define("imageClientApi/engines/attributes/backgroundAttributes", ["imageClientApi/helpers/imageServiceConstants"], function(a){"use strict"; function b(b, c){var d = {css:{container:{}}}, e = d.css, f = a.alignTypes, g = b.fittingType, h = a.fittingTypes; switch (g){case h.ORIGINAL_SIZE:case h.LEGACY_ORIGINAL_SIZE:case h.LEGACY_STRIP_ORIGINAL_SIZE:e.container.backgroundSize = "auto", e.container.backgroundRepeat = "no-repeat"; break; case h.SCALE_TO_FIT:case h.LEGACY_STRIP_SCALE_TO_FIT:e.container.backgroundSize = "contain", e.container.backgroundRepeat = "no-repeat"; break; case h.STRETCH:e.container.backgroundSize = "100% 100%", e.container.backgroundRepeat = "no-repeat"; break; case h.SCALE_TO_FILL:case h.LEGACY_STRIP_SCALE_TO_FILL:e.container.backgroundSize = "cover", e.container.backgroundRepeat = "no-repeat"; break; case h.TILE_HORIZONTAL:case h.LEGACY_STRIP_TILE_HORIZONTAL:e.container.backgroundSize = "auto", e.container.backgroundRepeat = "repeat-x"; break; case h.TILE_VERTICAL:case h.LEGACY_STRIP_TILE_VERTICAL:e.container.backgroundSize = "auto", e.container.backgroundRepeat = "repeat-y"; break; case h.TILE:case h.LEGACY_STRIP_TILE:e.container.backgroundSize = "auto", e.container.backgroundRepeat = "repeat"; break; case h.FIT_AND_TILE:case h.LEGACY_STRIP_FIT_AND_TILE:e.container.backgroundSize = "contain", e.container.backgroundRepeat = "repeat"; break; case h.LEGACY_BG_FIT_AND_TILE:e.container.backgroundSize = "auto", e.container.backgroundRepeat = "repeat"; break; case h.LEGACY_BG_FIT_AND_TILE_HORIZONTAL:e.container.backgroundSize = "auto", e.container.backgroundRepeat = "repeat-x"; break; case h.LEGACY_BG_FIT_AND_TILE_VERTICAL:e.container.backgroundSize = "auto", e.container.backgroundRepeat = "repeat-y"; break; case h.LEGACY_BG_NORMAL:e.container.backgroundSize = "auto", e.container.backgroundRepeat = "no-repeat"}switch (c.alignment){case f.CENTER:e.container.backgroundPosition = "center center"; break; case f.LEFT:e.container.backgroundPosition = "left center"; break; case f.RIGHT:e.container.backgroundPosition = "right center"; break; case f.TOP:e.container.backgroundPosition = "center top"; break; case f.BOTTOM:e.container.backgroundPosition = "center bottom"; break; case f.TOP_RIGHT:e.container.backgroundPosition = "right top"; break; case f.TOP_LEFT:e.container.backgroundPosition = "left top"; break; case f.BOTTOM_RIGHT:e.container.backgroundPosition = "right bottom"; break; case f.BOTTOM_LEFT:e.container.backgroundPosition = "left bottom"}return d}return{get:b}}), define("imageClientApi/engines/attributes/imgAttributes", ["imageClientApi/helpers/imageServiceConstants"], function(a){"use strict"; function b(b, c){var d = {css:{container:{}, img:{}}}, e = d.css, f = b.fittingType, g = c.alignment, h = a.fittingTypes, i = a.alignTypes; switch (e.container.position = "relative", f){case h.ORIGINAL_SIZE:case h.LEGACY_ORIGINAL_SIZE:b.parts && b.parts.length?(e.img.width = b.parts[0].width, e.img.height = b.parts[0].height):(e.img.width = b.src.width, e.img.height = b.src.height); break; case h.SCALE_TO_FIT:case h.LEGACY_FIT_WIDTH:case h.LEGACY_FIT_HEIGHT:case h.LEGACY_FULL:e.img.width = c.width, e.img.height = c.height, e.img.objectFit = "contain"; break; case h.STRETCH:e.img.width = c.width, e.img.height = c.height, e.img.objectFit = "fill"; break; case h.SCALE_TO_FILL:e.img.width = c.width, e.img.height = c.height, e.img.objectFit = "cover"}if (f === h.ORIGINAL_SIZE && (c.width > b.src.width || c.height > b.src.height)){var j = (c.height - b.src.height) / 2, k = (c.width - b.src.width) / 2; switch (e.img.position = "absolute", e.img.top = "auto", e.img.right = "auto", e.img.bottom = "auto", e.img.left = "auto", g){default:case i.CENTER:e.img.width = c.width, e.img.height = c.height, e.img.objectFit = "none"; break; case i.LEFT:e.img.left = 0, e.img.top = j; break; case i.RIGHT:e.img.right = 0, e.img.top = j; break; case i.TOP:e.img.left = k, e.img.top = 0; break; case i.BOTTOM:e.img.left = k, e.img.bottom = 0; break; case i.TOP_RIGHT:e.img.right = 0, e.img.top = 0; break; case i.TOP_LEFT:e.img.left = 0, e.img.top = 0; break; case i.BOTTOM_RIGHT:e.img.right = 0, e.img.bottom = 0; break; case i.BOTTOM_LEFT:e.img.left = 0, e.img.bottom = 0}}return d}return{get:b}}), define("imageClientApi/engines/attributes/SVGAttributes", ["imageClientApi/helpers/imageServiceConstants", "imageClientApi/helpers/imageServiceUtils"], function(a, b){"use strict"; function c(c, d){var l, e = {css:{container:{}}, attr:{container:{}, img:{}}}, f = e.css, g = e.attr, h = c.fittingType, i = a.fittingTypes, j = c.src.width, k = c.src.height; switch (f.container.position = "relative", h){case i.ORIGINAL_SIZE:case i.LEGACY_ORIGINAL_SIZE:g.img.width = c.src.width, g.img.height = c.src.height, g.img.x = "50%", g.img.y = "50%", g.img.transform = "translate(" + - c.src.width / 2 + "," + - c.src.height / 2 + ")", g.img.preserveAspectRatio = "xMidYMid slice"; break; case i.SCALE_TO_FIT:case i.LEGACY_FIT_WIDTH:case i.LEGACY_FIT_HEIGHT:case i.LEGACY_FULL:l = b.getDimension(j, k, d.width, d.height, a.transformTypes.FIT), g.img.width = "100%", g.img.height = "100%", g.img.transform = "", g.img.preserveAspectRatio = ""; break; case i.STRETCH:g.img.width = d.width, g.img.height = d.height, g.img.x = 0, g.img.y = 0, g.img.transform = "", g.img.preserveAspectRatio = "none"; break; case i.SCALE_TO_FILL:b.isImageTransformApplicable(c.src.id)?(g.img.width = d.width, g.img.height = d.height):(l = b.getDimension(j, k, d.width, d.height, a.transformTypes.FILL), g.img.width = l.width, g.img.height = l.height), g.img.x = 0, g.img.y = 0, g.img.transform = "", g.img.preserveAspectRatio = "xMidYMid slice"}return g.container.width = d.width, g.container.height = d.height, g.container.viewBox = [0, 0, d.width, d.height].join(" "), e}return{get:c}}), define("imageClientApi/engines/attributes/imgPolyfillAttributes", ["imageClientApi/helpers/utils", "imageClientApi/helpers/imageServiceConstants", "imageClientApi/helpers/imageServiceUtils"], function(a, b, c){"use strict"; function d(d, e){var l, m, f = {css:{container:{}, img:{}}}, g = f.css, h = d.fittingType, i = b.fittingTypes, j = e.alignment, k = b.alignTypes; d.parts && d.parts.length?(l = d.parts[0].width, m = d.parts[0].height):(l = d.src.width, m = d.src.height); var n; switch (g.img.display = "block", g.container.position = "relative", g.img.position = "absolute", g.img.top = "auto", g.img.right = "auto", g.img.bottom = "auto", g.img.left = "auto", h){case i.ORIGINAL_SIZE:case i.LEGACY_ORIGINAL_SIZE:g.img.width = l, g.img.height = m; break; case i.SCALE_TO_FIT:case i.LEGACY_FIT_WIDTH:case i.LEGACY_FIT_HEIGHT:case i.LEGACY_FULL:n = c.getDimension(l, m, e.width, e.height, b.transformTypes.FIT), a.assign(g.img, n); break; case i.STRETCH:g.img.width = e.width, g.img.height = e.height; break; case i.SCALE_TO_FILL:c.isImageTransformApplicable(d.src.id)?(g.img.width = e.width, g.img.height = e.height):(n = c.getDimension(l, m, e.width, e.height, b.transformTypes.FILL), a.assign(g.img, n), g.container.overflow = "hidden")}if (g.img.width !== e.width || g.img.height !== e.height){var o = Math.round((e.height - g.img.height) / 2), p = Math.round((e.width - g.img.width) / 2); switch (j){default:case k.CENTER:g.img.top = o, g.img.left = p; break; case k.LEFT:g.img.left = 0, g.img.top = o; break; case k.RIGHT:g.img.right = 0, g.img.top = o; break; case k.TOP:g.img.left = p, g.img.top = 0; break; case k.BOTTOM:g.img.left = p, g.img.bottom = 0; break; case k.TOP_RIGHT:g.img.right = 0, g.img.top = 0; break; case k.TOP_LEFT:g.img.left = 0, g.img.top = 0; break; case k.BOTTOM_RIGHT:g.img.right = 0, g.img.bottom = 0; break; case k.BOTTOM_LEFT:g.img.left = 0, g.img.bottom = 0}}return f}return{get:d}}), define("imageClientApi/engines/attributes", ["imageClientApi/helpers/imageServiceConstants", "imageClientApi/helpers/imageServiceUtils", "imageClientApi/engines/attributes/backgroundAttributes", "imageClientApi/engines/attributes/imgAttributes", "imageClientApi/engines/attributes/SVGAttributes", "imageClientApi/engines/attributes/imgPolyfillAttributes"], function(a, b, c, d, e, f){"use strict"; function g(g, h){var i; return i = h.htmlTag === a.htmlTag.BG?c:h.htmlTag === a.htmlTag.SVG?e:b.isObjectFitBrowserSupport()?d:f, i.get(g, h)}return{getAttributes:g}}), define("imageClientApi", ["imageClientApi/helpers/utils", "imageClientApi/helpers/imageServiceConstants", "imageClientApi/helpers/imageServiceUtils", "imageClientApi/helpers/imageTransformParts", "imageClientApi/engines/transforms", "imageClientApi/engines/attributes"], function(a, b, c, d, e, f){"use strict"; function g(b, g, h, i){var j = {}, k = c.isValidRequest(b, g, h); if (!k.valid)return{uri:"", css:{img:{}, container:{}}, attr:{img:{}, container:{}}}; var l = d.getParsedRequest(b, g, h); return j.uri = e.getImageURI(l, i), a.assign(j, f.getAttributes(l, h)), j}return{getData:g, fittingTypes:b.fittingTypes, alignTypes:b.alignTypes, htmlTag:b.htmlTag, unsharpMaskType:b.usmType}});