define("buttonCommon/layout/buttonLayout",["zepto","lodash","experiment"],function(a,b,c){"use strict";function d(a){var b=window.getComputedStyle(a);return parseInt(b.paddingTop,10)+parseInt(b.paddingBottom,10)}function e(a){var b=window.getComputedStyle(a);return parseInt(b.marginRight,10)+parseInt(b.marginLeft,10)}function f(b,f,g){function o(){return j!==i.data("prevText")}function p(){return f.minWidth[b]<i.data("prevMinWidth")}function q(){return i.data("prevWidth")===i.data("prevMinWidth")}var h=b+"label",i=a(g[b]),j=i.text(),k=window.getComputedStyle(g[b]).minHeight;k&&parseInt(k,10)||(k=f.height[h]),f.minHeight[b]=parseInt(k,10),c.isOpen("sv_buttonUsesFlex")?f.minWidth[b]=f.width[h]:f.minWidth[b]=f.width[h]+e(g[h]);var l=i.data("shouldPreventWidthMeasurement");l||(f.width[b]=o()&&p()&&q()&&f.width[h]>0?f.minWidth[b]:Math.max(f.width[b],f.minWidth[b])),f.height[b]=Math.max(f.height[b],f.minHeight[b]),f.custom[b]={align:i.attr("data-align"),margin:parseInt(i.attr("data-margin"),10),shouldPreventWidthMeasurement:l,text:j},f.custom[h]={verticalPadding:d(g[h])};var m=f.width[h]+f.custom[b].margin>f.width[b],n=f.custom[b].align;"center"!==n&&(c.isOpen("sv_buttonUsesFlex")?f.custom[h].margin=m?f.width[b]-f.width[h]:f.custom[b].margin:f.custom[h]["margin-"+n]=m?f.width[b]-f.width[h]:f.custom[b].margin)}function g(a,d,e){var f;if(c.isOpen("sv_buttonUsesFlex")){f={};var g=e.custom[a].align;return"center"!==g&&e.custom[d].margin&&(f["margin-"+g]=e.custom[d].margin),f}return f={"line-height":e.height[a]-e.custom[d].verticalPadding+"px"},b.reduce(["margin-left","margin-right"],function(a,c){return b.isUndefined(e.custom[d][c])||(a[c]=e.custom[d][c]),a},f)}function h(a,b,c){var d={height:c.height[a],"min-height":c.minHeight[a]};c.custom[a].shouldPreventWidthMeasurement||(d.width=c.width[a]),b.css(a,d);var e=a+"label",f=g(a,e,c);b.css(e,f),b.data(a,{prevText:c.custom[a].text,prevMinWidth:c.minWidth[a],prevWidth:c.width[a]})}return{measureButton:f,patchSiteButton:h}}),define("buttonCommon/mixins/buttonMixin",["lodash","santaProps","utils","textCommon","experiment"],function(a,b,c,d,e){"use strict";function f(a){var b={};if("center"!==a.compProp.align){var d="margin"+(a.compProp.align?c.stringUtils.capitalize(a.compProp.align):""),f=a.measureMap&&a.measureMap.custom[a.id+"label"];e.isOpen("sv_buttonUsesFlex")?b[d]=f&&f.margin||a.compProp.margin:b[d]=f?f[d]:a.compProp.margin}return b}function g(a){var b={};return""!==a.compProp.padding&&(b.padding=a.compProp.padding),b}function h(){return this.shouldRecalculateLineHeight?{lineHeight:""}:{}}var i={propTypes:{compData:b.Types.Component.compData,compProp:b.Types.Component.compProp,compTheme:b.Types.Component.theme,measureMap:b.Types.Layout.measureMap},mixins:[d.textScaleMixin],componentWillMount:function(){this.currentStyle=this.santaTypesProps.theme,this.currentScale=a.get(this,"props.structure.layout.scale",1)},componentWillReceiveProps:function(b){var c=this.santaTypesProps.theme,d=a.get(b,"structure.layout.scale",1);a.isEqual(this.currentStyle,c)&&this.currentScale===d||(this.shouldRecalculateLineHeight=!0),this.currentStyle=c,this.currentScale=d},componentDidUpdate:function(){this.shouldRecalculateLineHeight&&(this.shouldRecalculateLineHeight=!1)},resetMinHeightIfNeeded:function(a){this.shouldRecalculateLineHeight&&(a[""]=a[""]||{},a[""].style=a[""].style||{},a[""].style.minHeight="")},getLabelStyle:function(){return a.merge(f(this.santaTypesProps),g(this.santaTypesProps),this.getFontSize(),h.call(this))}};return i}),define("buttonCommon",["buttonCommon/layout/buttonLayout","buttonCommon/mixins/buttonMixin"],function(a,b){"use strict";return{layout:a,buttonMixin:b}});