define("galleriesCommon/utils/matrixCalculations", [], function(){"use strict"; var a = {getItemPosition:function(a, b, c, d, e){var f = d, g = e, h = a % g, i = Math.floor((a - h) / g); return{left:h * (b + f), top:i * (c + f)}}, getAvailableRowsNumber:function(a, b, c){var d = Math.ceil(c / b); return Math.min(a, d)}, getItemHeight:function(a, b, c, d){var e = a, f = b - d; return Math.max(Math.floor((f - (c - 1) * e) / c), 0)}, getItemWidth:function(a, b, c, d){var e = a, f = b, g = c - d; return Math.max(Math.floor((g - (f - 1) * e) / f), 0)}, getImageStyle:function(a, b, c, d){var e = d > b, f = c > a, g = e?"100%":"auto", h = f?"100%":"auto", i = f?0:(b - d * (a / c)) / 2, j = e?0:(a - c * (b / d)) / 2; return{width:h, height:g, "margin-top":j, "margin-left":i}}}; return a}), define("galleriesCommon/utils/galleriesHelperFunctions", ["skins", "lodash", "galleriesCommon/utils/matrixCalculations"], function(a, b, c){"use strict"; function e(a){var b = d[a].exports; return b && b.heightDiff || 0}function f(a){var b = d[a].exports; return b && b.widthDiff || 0}function g(a, b, d, e, f){var g = d, h = this.getSkinHeightDiff(e), i = c.getItemHeight(d, f, a, h); return Math.floor(b * i + (b - 1) * g) + h}function h(a, c, d){var e = 0, f = parseInt(c.imgHeightDiff && c.imgHeightDiff.value, 10) || 0, g = parseInt(c.topPadding && c.topPadding.value, 10) || 0; return f || g?e = f + g:a && a.exports && (e = "mobileView" === d && b.isNumber(a.exports.m_heightDiff)?a.exports.m_heightDiff:a.exports.heightDiff || 0), e}function i(a, c){var d = 0; return a && a.exports && (d = "mobileView" === c && b.isNumber(a.exports.m_widthDiff)?a.exports.m_widthDiff:a.exports.widthDiff || 0), d}var d = a.skins; return{getSkinHeightDiff:e, getSkinWidthDiff:f, getGalleryHeight:g, getDisplayerHeightDiff:h, getDisplayerWidthDiff:i}}), define("galleriesCommon/utils/matrixScalingCalculations", [], function(){"use strict"; var a = {getSizeAfterScaling:function(a){var b = a.imageMode || "clipImage", c = a.itemHeight - a.bottomGap, d = a.widthDiff, e = a.heightDiff, f = {clipImage:this.getClipImage, flexibleHeight:this.getFlexibleHeight, flexibleWidth:this.getFlexibleWidth, flexibleWidthFixed:this.getFlexibleWidth}; return f[b].call(this, a.itemWidth, c, d, e, a.displayerData, b)}, getClipImage:function(a, b, c, d){return{displayerSize:{width:a, height:b}, imageWrapperSize:this.getWrapperSize(a - c, b - d)}}, getFlexibleHeight:function(a, b, c, d, e){var f = a - c, g = Math.floor(f / this.getAspectRatio(e)); return{displayerSize:{width:a, height:g}, imageWrapperSize:this.getWrapperSize(f, g - d)}}, getFlexibleWidth:function(a, b, c, d, e, f){var g = "flexibleWidth" === f, h = 0, i = 0, j = b - d, k = j * this.getAspectRatio(e); if (!g && k > a - c && k > a - c){var l = (a - c) / k; k = a - c, j = l * j}return g || (h = Math.floor((a - k - c) / 2), i = Math.floor((b - j - d) / 2)), {displayerSize:{width:g?k:a, height:b}, imageWrapperSize:this.getWrapperSize(k, j, h, i)}}, getAspectRatio:function(a){return a.width / a.height}, getWrapperSize:function(a, b, c, d){var e = 0 > b?0:b, f = 0 > a?0:a; return{imageWrapperHeight:e, imageWrapperWidth:f, imageWrapperMarginLeft:c || 0, imageWrapperMarginRight:c || 0, imageWrapperMarginTop:d || 0, imageWrapperMarginBottom:d || 0}}}; return a}), define("galleriesCommon", ["galleriesCommon/utils/galleriesHelperFunctions", "galleriesCommon/utils/matrixCalculations", "galleriesCommon/utils/matrixScalingCalculations"], function(a, b, c){"use strict"; return{utils:{galleriesHelperFunctions:a, matrixCalculations:b, matrixScalingCalculations:c}}});